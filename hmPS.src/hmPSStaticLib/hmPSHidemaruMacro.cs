﻿/* 
 * Copyright (c) 2016-2017 Akitsugu Komiyama
 * under the Apache License Version 2.0
 */

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;



// ★秀丸クラス
public sealed partial class hmPSDynamicLib
{
    public sealed partial class Hidemaru
    {
        public static TMacro Macro;
        public sealed class TMacro
        {
            public TMacro()
            {
                SetUnManagedDll();
            }

            public static int DebugInfo(params Object[] expressions)
            {
                if (pDebugInfo != null)
                {
                    List<String> list = new List<String>();
                    foreach (var exp in expressions)
                    {
                        var mixedString = exp.ToString();
                        string unifiedString = mixedString.Replace("\r\n", "\n").Replace("\n", "\r\n");
                        list.Add(unifiedString);
                    }

                    String joind = String.Join(" ", list);

                    return pDebugInfo(joind);
                }
                else
                {
                    OutputDebugStream(ErrorMsg.MethodNeed898);
                    throw new MissingMethodException("HidemaruMacroDebugInfoException");
                }
            }

            // マクロでの問い合わせ結果系
            public interface IResult
            {
                int Result { get; }
                String Message { get; }
                Exception Error { get; }
            }

            // 問い合わせ結果系の実態。外から見えないように
            private class TResult : IResult
            {
                public int Result { get; set; }
                public string Message { get; set; }
                public Exception Error { get; set; }

                public TResult(int Result, String Message, Exception Error)
                {
                    this.Result = Result;
                    this.Message = Message;
                    this.Error = Error;
                }
            }

            // マクロ文字列の実行。複数行を一気に実行可能
            public static IResult Eval(String cmd)
            {
                if (version < 866)
                {
                    OutputDebugStream(ErrorMsg.MethodNeed866);
                    TResult result = new TResult(0, "", new InvalidOperationException("HidemaruNeedVersionException"));
                    return result;
                }

                int ret = 0;
                try
                {
                    ret = pEvalMacro(cmd);
                }
                catch (Exception e)
                {
                    OutputDebugStream(e.Message);
                }

                if (ret == 0)
                {
                    TResult result = new TResult(ret, "", new InvalidOperationException("HidemaruMacroEvalException"));
                    return result;
                }
                else
                {
                    TResult result = new TResult(ret, "", null);
                    return result;
                }
            }

            [DllImport("user32.dll", SetLastError = true)]
            static extern IntPtr FindWindowEx(IntPtr hwndParent, IntPtr hwndChildAfter, string lpszClass, IntPtr szTitle);

            public static int SetStaticVariable(String symbolname, String value, int sharedMemoryFlag)
            {
                if (version < 915)
                {
                    OutputDebugStream(ErrorMsg.MethodNeed915);
                    throw new MissingMethodException("HidemaruMacroSetGlobalVariableException");
                }
                try
                {
                    if (pSetStaticVariable != null)
                    {
                        return pSetStaticVariable(symbolname, value, sharedMemoryFlag);
                    }
                    else
                    {
                        OutputDebugStream(ErrorMsg.MethodNeed915);
                        throw new MissingMethodException("HidemaruMacroSetGlobalVariableException");
                    }
                }
                catch (Exception e)
                {
                    OutputDebugStream(e.Message);
                    throw;
                }
            }

            public static string GetStaticVariable(String symbolname, int sharedMemoryFlag)
            {
                if (version < 915)
                {
                    OutputDebugStream(ErrorMsg.MethodNeed915);
                    throw new MissingMethodException("HidemaruMacroGetStaticVariableException");
                }
                try
                {
                    if (pGetStaticVariable != null)
                    {
                        IntPtr hGlobal = pGetStaticVariable(symbolname, sharedMemoryFlag);
                        return HGlobalToString(hGlobal);

                    }
                    else
                    {
                        OutputDebugStream(ErrorMsg.MethodNeed915);
                        throw new MissingMethodException("HidemaruMacroGetStaticVariableException");
                    }
                }
                catch (Exception e)
                {
                    OutputDebugStream(e.Message);
                    throw;
                }
            }

            public static bool IsExecuting
            {
                get
                {
                    const int WM_USER = 0x400;
                    const int WM_ISMACROEXECUTING = WM_USER + 167;

                    // 875.02から存在するが、安全を見て875正式版以降とする
                    if (version >= 875.99)
                    {
                        IntPtr hWndHidemaru = WindowHandle;
                        if (hWndHidemaru != IntPtr.Zero)
                        {
                            bool cwch = SendMessage(hWndHidemaru, WM_ISMACROEXECUTING, IntPtr.Zero, IntPtr.Zero);
                            return cwch;
                        }
                    }
                    // 古い状態でも取れる。866以上なら余裕
                    else
                    {
                        IntPtr hWndHidemaru = WindowHandle;
                        if (hWndHidemaru != IntPtr.Zero)
                        {
                            IntPtr hHm32Client = FindWindowEx(hWndHidemaru, IntPtr.Zero, "HM32CLIENT", IntPtr.Zero);
                            bool cwch = SendMessage(hHm32Client, WM_ISMACROEXECUTING, IntPtr.Zero, IntPtr.Zero);
                            return cwch;
                        }

                    }

                    return false;
                }
            }

            public static IResult ExecEval(String cmd)
            {
                TResult result = new TResult(0, "", null);
                if (IsExecuting)
                {
                    result.Result = -1;
                    result.Message = "";
                    result.Error = new InvalidOperationException("HidemaruMacroIsExecutingException");
                    return result;
                }

                if (version < 875.02)
                {
                    OutputDebugStream(ErrorMsg.MethodNeed875);
                    result.Result = 0;
                    result.Message = "";
                    result.Error = new InvalidOperationException("HidemaruNeedVersionException");
                    return result;
                }

                IntPtr hWndHidemaru = WindowHandle;
                if (hWndHidemaru == IntPtr.Zero)
                {
                    result.Result = 0;
                    result.Message = "";
                    result.Error = new NullReferenceException("HidemaruWindowHandleException");
                    return result;
                }

                const int WM_USER = 0x400;
                const int WM_REMOTE_EXECMACRO_MEMORY = WM_USER + 272;

                StringBuilder sbExpression = new StringBuilder(cmd);
                StringBuilder sbRet = new StringBuilder("\x0f0f", 0x0f0f + 1); // 最初の値は帰り値のバッファー
                bool cwch = SendMessage(hWndHidemaru, WM_REMOTE_EXECMACRO_MEMORY, sbRet, sbExpression);
                if (cwch)
                {
                    result.Result = 1;
                    result.Message = sbRet.ToString();
                    result.Error = null;
                }
                else
                {
                    result.Result = 0;
                    result.Message = sbRet.ToString();
                    result.Error = new InvalidOperationException("HidemaruMacroEvalException");
                }
                return result;
            }

            private static List<KeyValuePair<string, object>> SetMacroVarAndMakeMacroKeyArray(object[] args, int base_random)
            {
                var arg_list = new List<KeyValuePair<String, Object>>();
                int cur_random = new Random().Next(Int16.MaxValue) + 1;
                foreach (var ref_value in args)
                {
                    var value = ref_value;
                    bool success = false;
                    cur_random++;
                    object normalized_arg = null;
                    // Boolean型であれば、True:1 Flase:0にマッピングする
                    if (value is bool)
                    {
                        success = true;
                        if ((bool)value == true)
                        {
                            normalized_arg = 1;
                        }
                        else
                        {
                            normalized_arg = 0;
                        }
                    }

                    if (value is string || value is StringBuilder)
                    {
                        success = true;
                        normalized_arg = value.ToString();
                    }

                    if (!success)
                    {
                        // 配列ならば、全体が文字列もしくは、数値かにあわせて、List<String> or List<long>にすることで、hm.NETなど共通のList<***>処理へと糾合する
                        if (value is Object[])
                        {
                            try
                            {
                                List<long> long_list = new List<long>();
                                List<string> string_list = new List<string>();
                                Object[] value_list = (Object[])value;
                                foreach (var dv in value_list)
                                {
                                    if (dv is Int32 || dv is Int64 || dv is IntPtr)
                                    {
                                        long_list.Add((long)(dv));
                                    }
                                    else
                                    {
                                        string_list.Add(dv.ToString());
                                    }
                                }
                                if (value_list.Length == long_list.Count)
                                {
                                    value = long_list;
                                }
                                else if (value_list.Length == string_list.Count)
                                {
                                    value = string_list;
                                }
                                else
                                {
                                    OutputDebugStream("渡された Arrayに数値型と文字列型などの異なる型が入り混じっています");
                                }
                            }
                            catch (Exception)
                            {
                            }
                        }
                    }

                    // 配列の場合を追加
                    if (!success)
                    {
                        if (value.GetType() == new List<int>().GetType())
                        {
                            success = true;
                            normalized_arg = new List<int>((List<int>)value);
                        }
                        if (value.GetType() == new List<long>().GetType())
                        {
                            success = true;
                            normalized_arg = new List<long>((List<long>)value);
                        }
                        if (value.GetType() == new List<IntPtr>().GetType())
                        {
                            success = true;
                            normalized_arg = new List<IntPtr>((List<IntPtr>)value);
                        }
                    }

                    if (!success)
                    {
                        if (value.GetType() == new List<string>().GetType())
                        {
                            success = true;
                            normalized_arg = new List<String>((List<String>)value);
                        }
                    }
                    // 以上配列の場合を追加

                    if (!success)
                    {
                        // 32bit
                        if (IntPtr.Size == 4)
                        {
                            // まずは整数でトライ
                            Int32 itmp = 0;
                            try
                            {
                                // intでもIntPtrでもないならば...
                                if (value.GetType() != typeof(int).GetType() && value.GetType() != typeof(IntPtr).GetType())
                                {
                                    int itmp_cycle_bit = 0;
                                    long ltmp = 0;
                                    bool suc = Int64.TryParse(value.ToString(), out ltmp);
                                    if (suc)
                                    {
                                        success = LongToInt((long)ltmp, out itmp_cycle_bit);
                                        itmp = itmp_cycle_bit;
                                    }
                                }
                            }
                            catch (Exception)
                            {

                            }
                            if (!success)
                            {
                                success = Int32.TryParse(value.ToString(), out itmp);
                            }
                            if (success == true)
                            {
                                normalized_arg = itmp;
                            }
                            else
                            {
                                // 次に少数でトライ
                                double dtmp = 0;
                                if (IsDoubleNumeric(value))
                                {
                                    dtmp = (double)value;
                                    success = true;
                                }
                                else
                                {
                                    success = double.TryParse(value.ToString(), out dtmp);
                                }
                                if (success)
                                {
                                    dtmp = HmClamp<double>(dtmp, Int32.MinValue, Int32.MaxValue);
                                    normalized_arg = (Int32)(dtmp);
                                }
                                else
                                {
                                    normalized_arg = 0;
                                }
                            }
                        }

                        // 64bit
                        else
                        {
                            // まずは整数でトライ
                            Int64 itmp = 0;
                            success = Int64.TryParse(value.ToString(), out itmp);

                            if (success == true)
                            {
                                normalized_arg = itmp;
                            }

                            else
                            {
                                // 次に少数でトライ
                                double dtmp = 0;
                                if (IsDoubleNumeric(value))
                                {
                                    dtmp = (double)value;
                                    success = true;
                                }
                                else
                                {
                                    success = double.TryParse(value.ToString(), out dtmp);
                                }

                                if (success)
                                {
                                    dtmp = HmClamp<double>(dtmp, Int64.MinValue, Int64.MaxValue);
                                    normalized_arg = (Int64)(dtmp);
                                }
                                else
                                {
                                    normalized_arg = 0;
                                }
                            }
                        }
                    }


                    // 成功しなかった
                    if (!success)
                    {
                        normalized_arg = value.ToString();
                    }

                    if (normalized_arg is Int32 || normalized_arg is Int64)
                    {
                        string key = "#AsMacroArs_" + base_random.ToString() + '_' + cur_random.ToString();
                        arg_list.Add(new KeyValuePair<string, object>(key, normalized_arg));
                        Var[key] = normalized_arg;
                    }
                    else if (normalized_arg is string)
                    {
                        string key = "$AsMacroArs_" + base_random.ToString() + '_' + cur_random.ToString();
                        arg_list.Add(new KeyValuePair<string, object>(key, normalized_arg));
                        Var[key] = normalized_arg;
                    }
                    else if (value.GetType() == new List<int>().GetType() || value.GetType() == new List<long>().GetType() || value.GetType() == new List<IntPtr>().GetType())
                    {
                        string key = "$AsIntArrayOfMacroArs_" + base_random.ToString() + '_' + cur_random.ToString();
                        arg_list.Add(new KeyValuePair<string, object>(key, normalized_arg));
                        if (value.GetType() == new List<int>().GetType())
                        {
                            List<int> int_list = (List<int>)value;
                            for (int iix = 0; iix < int_list.Count; iix++)
                            {
                                Var[key + "[" + iix + "]"] = int_list[iix];
                            }
                        }
                        else if (value.GetType() == new List<long>().GetType())
                        {
                            List<long> long_list = (List<long>)value;
                            for (int iix = 0; iix < long_list.Count; iix++)
                            {
                                Var[key + "[" + iix + "]"] = long_list[iix];
                            }
                        }
                        else if (value.GetType() == new List<IntPtr>().GetType())
                        {
                            List<IntPtr> ptr_list = (List<IntPtr>)value;
                            for (int iix = 0; iix < ptr_list.Count; iix++)
                            {
                                Var[key + "[" + iix + "]"] = ptr_list[iix];
                            }
                        }
                    }
                    else if (value.GetType() == new List<string>().GetType())
                    {
                        string key = "$AsStrArrayOfMacroArs_" + base_random.ToString() + '_' + cur_random.ToString();
                        arg_list.Add(new KeyValuePair<string, object>(key, normalized_arg));
                        List<String> str_list = (List<String>)value;
                        for (int iix = 0; iix < str_list.Count; iix++)
                        {
                            Var[key + "[" + iix + "]"] = str_list[iix];
                        }
                    }
                }
                return arg_list;
            }



            private static int statement_base_random = 0;

            // マクロでの問い合わせ結果系
            public interface IStatementResult
            {
                int Result { get; }
                String Message { get; }
                Exception Error { get; }
                List<Object> Args { get; }
            }


            private class TStatementResult : IStatementResult
            {
                public int Result { get; set; }
                public string Message { get; set; }
                public Exception Error { get; set; }
                public List<Object> Args { get; set; }

                public TStatementResult(int Result, String Message, Exception Error, List<Object> Args)
                {
                    this.Result = Result;
                    this.Message = Message;
                    this.Error = Error;
                    this.Args = new List<Object>(Args); // コピー渡し
                }
            }

            private struct ExecStateResult
            {
                public int Result;
                public string Message;
                public Exception Error;
                public List<Object> Args;
            }


            public static IStatementResult Statement(string funcname, params object[] args)
            {
                if (statement_base_random == 0)
                {
                    statement_base_random = new System.Random().Next(Int16.MaxValue) + 1;

                }

                List<KeyValuePair<string, object>> arg_list = SetMacroVarAndMakeMacroKeyArray(args, statement_base_random);

                // keyをリスト化
                var arg_keys = new List<String>();
                foreach (var l in arg_list)
                {
                    arg_keys.Add(l.Key);
                }

                tmpVar = null;
                int dll = iDllBindHandle;

                if (dll == 0)
                {
                    throw new NullReferenceException(ErrorMsg.NoDllBindHandle866);
                }

                // それを「,」で繋げる
                string args_string = String.Join(", ", arg_keys);
                // それを指定の「文」で実行する形
                string expression = $"{funcname} {args_string};\n";

                String invocate = ModifyFuncCallByDllType("{0}");
                String cmd = "" +
                expression +
                "##_tmp_dll_id_ret = dllfuncw( " + invocate + " \"SetTmpVar\", result);\n" +
                "##_tmp_dll_id_ret = 0;\n";

                // 実行する
                IResult ret = Eval(cmd);
                ExecStateResult result = new ExecStateResult();
                result.Result = ret.Result;
                result.Error = ret.Error;
                result.Message = ret.Message;
                result.Args = new List<object>();

                int macro_result = 0;
                if (IntPtr.Size == 4)
                {
                    macro_result = (Int32)tmpVar + 0; // 確実に複製を
                }
                else
                {
                    Int64 macro_result64 = (Int64)tmpVar + 0; // 確実に複製を
                    Int32 macro_result32 = (Int32)HmClamp<Int64>(macro_result64, Int32.MinValue, Int32.MaxValue);
                    macro_result = (Int32)macro_result32;
                }

                if (result.Error == null)
                {
                    result.Result = macro_result;
                }
                tmpVar = null; // クリア

                // 成否も含めて結果を入れる。
                // new TResult(ret.Result, ret.Message, ret.Error);

                // 使ったので削除
                for (int ix = 0; ix < arg_list.Count; ix++)
                {
                    var l = arg_list[ix];
                    if (l.Value is Int32 || l.Value is Int64)
                    {
                        result.Args.Add(Var[l.Key]);
                        Var[l.Key] = 0;
                    }
                    else if (l.Value is string)
                    {
                        result.Args.Add(Var[l.Key]);
                        Var[l.Key] = "";
                    }

                    else if (l.Value.GetType() == new List<int>().GetType() || l.Value.GetType() == new List<long>().GetType() || l.Value.GetType() == new List<IntPtr>().GetType())
                    {
                        result.Args.Add(l.Value);
                        if (l.Value.GetType() == new List<int>().GetType())
                        {
                            List<int> int_list = (List<int>)l.Value;
                            for (int iix = 0; iix < int_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                        else if (l.Value.GetType() == new List<long>().GetType())
                        {
                            List<long> long_list = (List<long>)l.Value;
                            for (int iix = 0; iix < long_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                        else if (l.Value.GetType() == new List<IntPtr>().GetType())
                        {
                            List<IntPtr> ptr_list = (List<IntPtr>)l.Value;
                            for (int iix = 0; iix < ptr_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                    }
                    else if (l.Value.GetType() == new List<String>().GetType())
                    {
                        result.Args.Add(l.Value);
                        List<String> ptr_list = (List<String>)l.Value;
                        for (int iix = 0; iix < ptr_list.Count; iix++)
                        {
                            Var[l.Key + "[" + iix + "]"] = "";
                        }
                    }
                    else
                    {
                        result.Args.Add(l.Value);
                    }
                }

                return new TStatementResult(result.Result, result.Message, result.Error, result.Args); ;
            }

            private static int funciton_base_random = 0;


            // マクロでの問い合わせ結果系
            public interface IFunctionResult
            {
                object Result { get; }
                String Message { get; }
                Exception Error { get; }
                List<Object> Args { get; }
            }

            private class TFunctionResult : IFunctionResult
            {
                public object Result { get; set; }
                public string Message { get; set; }
                public Exception Error { get; set; }
                public List<Object> Args { get; set; }

                public TFunctionResult(object Result, String Message, Exception Error, List<Object> Args)
                {
                    this.Result = Result;
                    this.Message = Message;
                    this.Error = Error;
                    this.Args = new List<Object>(Args); // コピー渡し
                }
            }


            private struct ExecFuncResult
            {
                public object Result;
                public string Message;
                public Exception Error;
                public List<Object> Args;
            }

            private static ExecFuncResult AsFunctionTryInvokeMember<T>(string funcname, params object[] args)
            {
                if (funciton_base_random == 0)
                {
                    funciton_base_random = new System.Random().Next(Int16.MaxValue) + 1;
                }

                List<KeyValuePair<string, object>> arg_list = SetMacroVarAndMakeMacroKeyArray(args, statement_base_random);

                // keyをリスト化
                var arg_keys = new List<String>();
                foreach (var l in arg_list)
                {
                    arg_keys.Add(l.Key);
                }

                // それを「,」で繋げる
                string args_string = String.Join(", ", arg_keys);
                // それを指定の「関数」で実行する形
                string expression = $"{funcname}({args_string})";

                //----------------------------------------------------------------
                ExecFuncResult result = new ExecFuncResult();
                result.Args = new List<object>();

                // 866より少ないのでこのリターンの正常性は考慮しなくても良い
                if (version < 866)
                {
                    OutputDebugStream(ErrorMsg.MethodNeed866);
                    result.Result = null;
                    result.Message = "";
                    result.Error = new InvalidOperationException("HidemaruNeedVersionException");
                    return result;
                }

                tmpVar = null;
                int dll = iDllBindHandle;

                if (dll == 0)
                {
                    throw new NullReferenceException(ErrorMsg.NoDllBindHandle866);
                }

                IResult eval_ret;
                if (typeof(T) == typeof(int) || typeof(T) == typeof(long) || typeof(T) == typeof(IntPtr) || typeof(T) == typeof(double))
                {
                    String invocate = ModifyFuncCallByDllType("{0}");

                    String cmd = "" +
                        "##_tmp_dll_expression_ret = " + expression + ";\n" +
                        "##_tmp_dll_id_ret = dllfuncw( " + invocate + " \"SetTmpVar\", ##_tmp_dll_expression_ret);\n" +
                        "##_tmp_dll_id_ret = 0;\n" +
                        "##_tmp_dll_expression_ret = 0;\n";

                    eval_ret = Eval(cmd);
                }
                else if (typeof(T) == typeof(String))
                {
                    String invocate = ModifyFuncCallByDllType("{0}");

                    String cmd = "" +
                        "$$_tmp_dll_expression_ret = " + expression + ";\n" +
                        "##_tmp_dll_id_ret = dllfuncw( " + invocate + " \"SetTmpVar\", $$_tmp_dll_expression_ret);\n" +
                        "##_tmp_dll_id_ret = 0;\n" +
                        "$$_tmp_dll_expression_ret = \"\";\n";

                    eval_ret = Eval(cmd);
                }
                else
                {
                    String invocate = ModifyFuncCallByDllType("{0}");

                    String cmd = "" +
                        "##_tmp_dll_id_ret = dllfuncw( " + invocate + " \"SetTmpVar\", " + expression + ");\n" +
                        "##_tmp_dll_id_ret = 0;\n";

                    eval_ret = Eval(cmd);
                }


                bool is_exception = false;
                if (tmpVar == null)
                {
                    is_exception = true;
                    result.Result = null;
                    result.Message = "";
                    result.Error = new InvalidOperationException("HidemaruMacroEvalException");
                }

                if (!is_exception)
                {
                    Object ret = tmpVar;
                    tmpVar = null; // クリア

                    if (ret.GetType().Name != "String")
                    {
                        if (IntPtr.Size == 4)
                        {
                            result.Result = (Int32)ret + 0; // 確実に複製を
                            result.Message = eval_ret.Message;
                            result.Error = eval_ret.Error;
                        }
                        else
                        {
                            result.Result = (Int64)ret + 0; // 確実に複製を
                            result.Message = eval_ret.Message;
                            result.Error = eval_ret.Error;
                        }
                    }
                    else
                    {
                        result.Result = (String)ret + ""; // 確実に複製を
                        result.Message = eval_ret.Message;
                        result.Error = eval_ret.Error;
                    }

                }

                // 使ったので削除
                for (int ix = 0; ix < arg_list.Count; ix++)
                {
                    var l = arg_list[ix];
                    if (l.Value is Int32 || l.Value is Int64)
                    {
                        result.Args.Add(Var[l.Key]);
                        Var[l.Key] = 0;
                    }
                    else if (l.Value is string)
                    {
                        result.Args.Add(Var[l.Key]);
                        Var[l.Key] = "";
                    }

                    else if (l.Value.GetType() == new List<int>().GetType() || l.Value.GetType() == new List<long>().GetType() || l.Value.GetType() == new List<IntPtr>().GetType())
                    {
                        result.Args.Add(l.Value);
                        if (l.Value.GetType() == new List<int>().GetType())
                        {
                            List<int> int_list = (List<int>)l.Value;
                            for (int iix = 0; iix < int_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                        else if (l.Value.GetType() == new List<long>().GetType())
                        {
                            List<long> long_list = (List<long>)l.Value;
                            for (int iix = 0; iix < long_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                        else if (l.Value.GetType() == new List<IntPtr>().GetType())
                        {
                            List<IntPtr> ptr_list = (List<IntPtr>)l.Value;
                            for (int iix = 0; iix < ptr_list.Count; iix++)
                            {
                                Var[l.Key + "[" + iix + "]"] = 0;
                            }
                        }
                    }
                    else if (l.Value.GetType() == new List<String>().GetType())
                    {
                        result.Args.Add(l.Value);
                        List<String> ptr_list = (List<String>)l.Value;
                        for (int iix = 0; iix < ptr_list.Count; iix++)
                        {
                            Var[l.Key + "[" + iix + "]"] = "";
                        }
                    }
                    else
                    {
                        result.Args.Add(l.Value);
                    }
                }

                return result;
            }

            public static IFunctionResult Function(string funcname, params object[] args)
            {
                var ret = AsFunctionTryInvokeMember<Object>(funcname, args);
                IFunctionResult result = new TFunctionResult(ret.Result, ret.Message, ret.Error, ret.Args);
                return result;
            }

            public static IFunctionResult FunctionNum(string funcname, params object[] args)
            {
                var ret = AsFunctionTryInvokeMember<IntPtr>(funcname, args);
                IFunctionResult result = new TFunctionResult(ret.Result, ret.Message, ret.Error, ret.Args);
                return result;
            }

            public static IFunctionResult FunctionStr(string funcname, params object[] args)
            {
                var ret = AsFunctionTryInvokeMember<String>(funcname, args);
                IFunctionResult result = new TFunctionResult(ret.Result, ret.Message, ret.Error, ret.Args);
                return result;
            }


            // マクロ文字列の実行。複数行を一気に実行可能
            public static TMacroVar Var = new TMacroVar();
            public class TMacroVar
            {
                public TMacroVar() { }
                public Object this[String var_name]
                {
                    get
                    {
                        if (version < 866)
                        {
                            OutputDebugStream(ErrorMsg.MethodNeed866);
                            return null;
                        }

                        tmpVar = null;
                        int dll = iDllBindHandle;

                        if (dll == 0)
                        {
                            throw new NullReferenceException(ErrorMsg.NoDllBindHandle866);
                        }

                        String invocate = ModifyFuncCallByDllType("{0}");
                        String cmd = "" +
                            "##_tmp_dll_id_ret = dllfuncw( " + invocate + " \"SetTmpVar\", " + var_name + ");\n" +
                            "##_tmp_dll_id_ret = 0;\n";

                        Eval(cmd);

                        if (tmpVar == null)
                        {
                            return null;
                        }
                        Object ret = tmpVar;
                        tmpVar = null; // クリア

                        if (ret.GetType().Name != "String")
                        {
                            if (IntPtr.Size == 4)
                            {
                                return (Int32)ret + 0; // 確実に複製を
                            }
                            else
                            {
                                return (Int64)ret + 0; // 確実に複製を
                            }
                        }
                        else
                        {
                            return (String)ret + ""; // 確実に複製を
                        }
                    }

                    set
                    {
                        // 設定先の変数が数値型
                        if (var_name.StartsWith("#"))
                        {
                            if (version < 866)
                            {
                                OutputDebugStream(ErrorMsg.MethodNeed866);
                                return;
                            }

                            int dll = iDllBindHandle;

                            if (dll == 0)
                            {
                                throw new NullReferenceException(ErrorMsg.NoDllBindHandle866);
                            }

                            Object result = new Object();

                            // Boolean型であれば、True:1 Flase:0にマッピングする
                            if (value.GetType().Name == "Boolean")
                            {
                                if ((Boolean)value == true)
                                {
                                    value = 1;
                                }
                                else
                                {
                                    value = 0;
                                }
                            }

                            // 32bit
                            if (IntPtr.Size == 4)
                            {
                                // まずは整数でトライ
                                Int32 itmp = 0;
                                bool success = false;
                                try
                                {
                                    // intでもIntPtrでもないならば...
                                    if (value.GetType() != typeof(int).GetType() && value.GetType() != typeof(IntPtr).GetType())
                                    {
                                        int itmp_cycle_bit = 0;
                                        long ltmp = 0;
                                        bool suc = Int64.TryParse(value.ToString(), out ltmp);
                                        if (suc)
                                        {
                                            success = LongToInt((long)ltmp, out itmp_cycle_bit);
                                            itmp = itmp_cycle_bit;
                                        }
                                    }
                                }
                                catch (Exception)
                                {

                                }
                                if (!success)
                                {
                                    success = Int32.TryParse(value.ToString(), out itmp);
                                }
                                if (success == true)
                                {
                                    result = itmp;
                                }

                                else
                                {
                                    // 次に少数でトライ
                                    double dtmp = 0;
                                    if (IsDoubleNumeric(value))
                                    {
                                        dtmp = (double)value;
                                        success = true;
                                    }
                                    else
                                    {
                                        success = double.TryParse(value.ToString(), out dtmp);
                                    }
                                    if (success)
                                    {
                                        dtmp = HmClamp<double>(dtmp, Int32.MinValue, Int32.MaxValue);
                                        result = (Int32)(dtmp);
                                    }
                                    else
                                    {
                                        result = 0;
                                    }
                                }
                            }

                            // 64bit
                            else
                            {
                                // まずは整数でトライ
                                Int64 itmp = 0;
                                bool success = Int64.TryParse(value.ToString(), out itmp);

                                if (success == true)
                                {
                                    result = itmp;
                                }

                                else
                                {
                                    // 次に少数でトライ
                                    double dtmp = 0;
                                    if (IsDoubleNumeric(value))
                                    {
                                        dtmp = (double)value;
                                        success = true;
                                    }
                                    else
                                    {
                                        success = double.TryParse(value.ToString(), out dtmp);
                                    }
                                    if (success)
                                    {
                                        dtmp = HmClamp<double>(dtmp, Int64.MinValue, Int64.MaxValue);
                                        result = (Int64)(dtmp);
                                    }
                                    else
                                    {
                                        result = 0;
                                    }
                                }
                            }

                            SetTmpVar(result);
                            String invocate = ModifyFuncCallByDllType("{0}");
                            String cmd = "" +
                                var_name + " = dllfuncw( " + invocate + " \"PopNumVar\" );\n";
                            Eval(cmd);
                            SetTmpVar(null);
                        }

                        else // if (var_name.StartsWith("$")
                        {
                            if (version < 866)
                            {
                                OutputDebugStream(ErrorMsg.MethodNeed866);
                                return;
                            }

                            int dll = iDllBindHandle;

                            if (dll == 0)
                            {
                                throw new NullReferenceException(ErrorMsg.NoDllBindHandle866);
                            }

                            String result = value.ToString();
                            SetTmpVar(result);
                            String invocate = ModifyFuncCallByDllType("{0}");
                            String cmd = "" +
                                var_name + " = dllfuncstrw( " + invocate + " \"PopStrVar\" );\n";
                            Eval(cmd);
                            SetTmpVar(null);
                        }
                    }
                }
            }

            public static Object FuncProxy(String name, String t, Object[] args)
            {
                System.Collections.Generic.List<Object> l = new System.Collections.Generic.List<Object>();
                if (args == null)
                {
                    // ヌルは防衛。Objectの配列にしておく。
                    args = l.ToArray();
                }
                if (t == "fn" || t == "fs") {
                    var count = args.Length;
                    if (count == 0)
                    {
                        return Var[name];
                    }
                    else
                    {
                        var ret = Function(name, args);
                        return ret.Result;
                    }
                }
                else if (t == "fnfo")
                {
                    var count = args.Length;
                    if (count == 0)
                    {
                        var ret = Function(name);
                        return ret.Result;
                    }
                    else
                    {
                        var ret = Function(name, args);
                        return ret.Result;
                    }
                }
                else if (t == "fnn")
                {
                    var ret = FunctionNum(name, args);
                    return ret.Result;
                }
                else if (t == "fss")
                {
                    var ret = FunctionStr(name, args);
                    return ret.Result;
                }
                else if (t == "fn0" || t == "fs0")
                {
                    var ret = Function(name);
                    return ret.Result;
                }
                else if (t == "fsn")
                {
                    if (name == "toupper" || name == "tolower")
                    {
                        if (args.Length >= 1 && args[0].GetType() == "".GetType())
                        {
                            var ret = Function(name, args);
                            return ret.Result;
                        }
                        else
                        {
                            var ret = Statement(name, args);
                            return ret.Result;
                        }
                    }
                    else if (name == "filter")
                    {
                        if (args.Length >= 4)
                        {
                            var ret = Function(name, args);
                            return ret.Result;
                        }
                        else
                        {
                            var ret = Statement(name, args);
                            return ret.Result;
                        }
                    }
                    else if (name == "hidemaruversion")
                    {
                        if (args.Length >= 1 && args[0].GetType() == "".GetType())
                        {
                            var ret = Statement(name, args);
                            return ret.Result;
                        }
                    }

                    var count = args.Length;
                    if (count == 0)
                    {
                        return Var[name];
                    }
                    else
                    {
                        var ret = Function(name, args);
                        return ret.Result;
                    }
                }
                else if (t == "fn1s")
                {
                    List<object> list_args = new List<object>(args);
                    if (args.Length >= 1)
                    {
                        list_args[0] = list_args[0].ToString();
                    }

                    {
                        var ret = Function(name, list_args.ToArray());
                        return ret.Result;
                    }
                }
                else if (t == "fn1s2s")
                {
                    List<object> list_args = new List<object>(args);
                    if (args.Length >= 1)
                    {
                        list_args[0] = list_args[0].ToString();
                    }
                    if (args.Length >= 2)
                    {
                        list_args[1] = list_args[1].ToString();
                    }

                    {
                        var ret = Function(name, list_args.ToArray());
                        return ret.Result;
                    }
                }
                else if (t == "st")
                {
                    var ret = Statement(name, args);
                    return ret.Result;
                }
                else if (t == "st1s")
                {
                    List<object> list_args = new List<object>(args);
                    if (args.Length >= 1)
                    {
                        list_args[0] = list_args[0].ToString();
                    }

                    {
                        var ret = Statement(name, list_args.ToArray());
                        return ret.Result;
                    }
                }
                else if (t == "st1s2s")
                {
                    List<object> list_args = new List<object>(args);
                    if (args.Length >= 1)
                    {
                        list_args[0] = list_args[0].ToString();
                    }
                    if (args.Length >= 2)
                    {
                        list_args[1] = list_args[1].ToString();
                    }

                    {
                        var ret = Statement(name, list_args.ToArray());
                        return ret.Result;
                    }
                }


                return null;
            }
        }
    }
}