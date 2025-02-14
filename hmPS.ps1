# hmPS.ps1 v2.0.2.4

function gettotaltext{ return $hm::Edit::TotalText; }
function settotaltext{ $hm::Edit::TotalText=$args[0]; return $hm::Macro::Var["result"]; }
function getlinetext{ return $hm::Macro::FuncProxy("getlinetext", "fs0", $args[0]); }
function getselectedtext{ return $hm::Macro::FuncProxy("getselectedtext", "fs0", $args[0]); }

function version{ return $hm::Macro::FuncProxy("version", "fn", $args[0]); }
function platform{ return $hm::Macro::FuncProxy("platform", "fn", $args[0]); }
function darkmode{ return $hm::Macro::FuncProxy("darkmode", "fn", $args[0]); }
function x{ return $hm::Macro::FuncProxy("x", "fn", $args[0]); }
function y{ return $hm::Macro::FuncProxy("y", "fn", $args[0]); }
function column{ return $hm::Macro::FuncProxy("column", "fn", $args[0]); }
function column_wcs{ return $hm::Macro::FuncProxy("column_wcs", "fn", $args[0]); }
function column_ucs4{ return $hm::Macro::FuncProxy("column_ucs4", "fn", $args[0]); }
function column_cmu{ return $hm::Macro::FuncProxy("column_cmu", "fn", $args[0]); }
function column_gcu{ return $hm::Macro::FuncProxy("column_gcu", "fn", $args[0]); }
function lineno{ return $hm::Macro::FuncProxy("lineno", "fn", $args[0]); }
function tabcolumn{ return $hm::Macro::FuncProxy("tabcolumn", "fn", $args[0]); }
function xview{ return $hm::Macro::FuncProxy("xview", "fn", $args[0]); }
function code{ return $hm::Macro::FuncProxy("code", "fn", $args[0]); }
function unicode{ return $hm::Macro::FuncProxy("unicode", "fn", $args[0]); }
function colorcode{ return $hm::Macro::FuncProxy("colorcode", "fn", $args[0]); }
function marked{ return $hm::Macro::FuncProxy("marked", "fn", $args[0]); }
function lineupdated{ return $hm::Macro::FuncProxy("lineupdated", "fn", $args[0]); }
function xpixel{ return $hm::Macro::FuncProxy("xpixel", "fn", $args[0]); }
function ypixel{ return $hm::Macro::FuncProxy("ypixel", "fn", $args[0]); }
function xpixel2{ return $hm::Macro::FuncProxy("xpixel2", "fn", $args[0]); }
function ypixel2{ return $hm::Macro::FuncProxy("ypixel2", "fn", $args[0]); }
function prevposx{ return $hm::Macro::FuncProxy("prevposx", "fn", $args[0]); }
function prevposy{ return $hm::Macro::FuncProxy("prevposy", "fn", $args[0]); }
function lastupdatedx{ return $hm::Macro::FuncProxy("lastupdatedx", "fn", $args[0]); }
function lastupdatedy{ return $hm::Macro::FuncProxy("lastupdatedy", "fn", $args[0]); }
function mousecolumn{ return $hm::Macro::FuncProxy("mousecolumn", "fn", $args[0]); }
function mouselineno{ return $hm::Macro::FuncProxy("mouselineno", "fn", $args[0]); }
function linecount{ return $hm::Macro::FuncProxy("linecount", "fn", $args[0]); }
function linecount2{ return $hm::Macro::FuncProxy("linecount2", "fn", $args[0]); }
function linelen{ return $hm::Macro::FuncProxy("linelen", "fn", $args[0]); }
function linelen2{ return $hm::Macro::FuncProxy("linelen2", "fn", $args[0]); }
function linelen_wcs{ return $hm::Macro::FuncProxy("linelen_wcs", "fn", $args[0]); }
function linelen_ucs4{ return $hm::Macro::FuncProxy("linelen_ucs4", "fn", $args[0]); }
function linelen_cmu{ return $hm::Macro::FuncProxy("linelen_cmu", "fn", $args[0]); }
function linelen_gcu{ return $hm::Macro::FuncProxy("linelen_gcu", "fn", $args[0]); }
function tabcolumnmax{ return $hm::Macro::FuncProxy("tabcolumnmax", "fn", $args[0]); }
function selecting{ return $hm::Macro::FuncProxy("selecting", "fn", $args[0]); }
function rectselecting{ return $hm::Macro::FuncProxy("rectselecting", "fn", $args[0]); }
function lineselecting{ return $hm::Macro::FuncProxy("lineselecting", "fn", $args[0]); }
function selectionlock{ return $hm::Macro::FuncProxy("selectionlock", "fn", $args[0]); }
function mouseselecting{ return $hm::Macro::FuncProxy("mouseselecting", "fn", $args[0]); }
function multiselecting{ return $hm::Macro::FuncProxy("multiselecting", "fn", $args[0]); }
function multiselectcount{ return $hm::Macro::FuncProxy("multiselectcount", "fn", $args[0]); }
function inselecting{ return $hm::Macro::FuncProxy("inselecting", "fn", $args[0]); }
function seltopx{ return $hm::Macro::FuncProxy("seltopx", "fn", $args[0]); }
function seltopy{ return $hm::Macro::FuncProxy("seltopy", "fn", $args[0]); }
function selendx{ return $hm::Macro::FuncProxy("selendx", "fn", $args[0]); }
function selendy{ return $hm::Macro::FuncProxy("selendy", "fn", $args[0]); }
function seltopcolumn{ return $hm::Macro::FuncProxy("seltopcolumn", "fn", $args[0]); }
function seltoplineno{ return $hm::Macro::FuncProxy("seltoplineno", "fn", $args[0]); }
function selendcolumn{ return $hm::Macro::FuncProxy("selendcolumn", "fn", $args[0]); }
function selendlineno{ return $hm::Macro::FuncProxy("selendlineno", "fn", $args[0]); }
function seltop_wcs{ return $hm::Macro::FuncProxy("seltop_wcs", "fn", $args[0]); }
function seltop_ucs4{ return $hm::Macro::FuncProxy("seltop_ucs4", "fn", $args[0]); }
function seltop_cmu{ return $hm::Macro::FuncProxy("seltop_cmu", "fn", $args[0]); }
function seltop_gcu{ return $hm::Macro::FuncProxy("seltop_gcu", "fn", $args[0]); }
function selend_wcs{ return $hm::Macro::FuncProxy("selend_wcs", "fn", $args[0]); }
function selend_ucs4{ return $hm::Macro::FuncProxy("selend_ucs4", "fn", $args[0]); }
function selend_cmu{ return $hm::Macro::FuncProxy("selend_cmu", "fn", $args[0]); }
function selend_gcu{ return $hm::Macro::FuncProxy("selend_gcu", "fn", $args[0]); }
function selopenx{ return $hm::Macro::FuncProxy("selopenx", "fn", $args[0]); }
function selopeny{ return $hm::Macro::FuncProxy("selopeny", "fn", $args[0]); }
function windowwidth{ return $hm::Macro::FuncProxy("windowwidth", "fn", $args[0]); }
function windowheight{ return $hm::Macro::FuncProxy("windowheight", "fn", $args[0]); }
function windowcx{ return $hm::Macro::FuncProxy("windowcx", "fn", $args[0]); }
function windowcy{ return $hm::Macro::FuncProxy("windowcy", "fn", $args[0]); }
function windowposx{ return $hm::Macro::FuncProxy("windowposx", "fn", $args[0]); }
function windowposy{ return $hm::Macro::FuncProxy("windowposy", "fn", $args[0]); }
function splitstate{ return $hm::Macro::FuncProxy("splitstate", "fn", $args[0]); }
function splitmode{ return $hm::Macro::FuncProxy("splitmode", "fn", $args[0]); }
function splitpos{ return $hm::Macro::FuncProxy("splitpos", "fn", $args[0]); }
function windowstate{ return $hm::Macro::FuncProxy("windowstate", "fn", $args[0]); }
function windowstate2{ return $hm::Macro::FuncProxy("windowstate2", "fn", $args[0]); }
function cxscreen{ return $hm::Macro::FuncProxy("cxscreen", "fn", $args[0]); }
function cyscreen{ return $hm::Macro::FuncProxy("cyscreen", "fn", $args[0]); }
function xworkarea{ return $hm::Macro::FuncProxy("xworkarea", "fn", $args[0]); }
function yworkarea{ return $hm::Macro::FuncProxy("yworkarea", "fn", $args[0]); }
function cxworkarea{ return $hm::Macro::FuncProxy("cxworkarea", "fn", $args[0]); }
function cyworkarea{ return $hm::Macro::FuncProxy("cyworkarea", "fn", $args[0]); }
function monitor{ return $hm::Macro::FuncProxy("monitor", "fn", $args[0]); }
function monitorcount{ return $hm::Macro::FuncProxy("monitorcount", "fn", $args[0]); }
function tabmode{ return $hm::Macro::FuncProxy("tabmode", "fn", $args[0]); }
function tabgroup{ return $hm::Macro::FuncProxy("tabgroup", "fn", $args[0]); }
function tabgrouporder{ return $hm::Macro::FuncProxy("tabgrouporder", "fn", $args[0]); }
function taborder{ return $hm::Macro::FuncProxy("taborder", "fn", $args[0]); }
function tabtotal{ return $hm::Macro::FuncProxy("tabtotal", "fn", $args[0]); }
function tabgrouptotal{ return $hm::Macro::FuncProxy("tabgrouptotal", "fn", $args[0]); }
function screentopy{ return $hm::Macro::FuncProxy("screentopy", "fn", $args[0]); }
function screenleftx{ return $hm::Macro::FuncProxy("screenleftx", "fn", $args[0]); }
function compfilehandle{ return $hm::Macro::FuncProxy("compfilehandle", "fn", $args[0]); }
function scrolllinkhandle{ return $hm::Macro::FuncProxy("scrolllinkhandle", "fn", $args[0]); }
function filehistcount{ return $hm::Macro::FuncProxy("filehistcount", "fn", $args[0]); }

function overwrite{
    if ($args[0].Length -eq 0) {
        return $hm::Macro::FuncProxy("overwrite", "fn", $args[0]);
    }
    else {
        return $hm::Macro::FuncProxy("overwrite", "st1s", $args[0]);
    }
}

function updated{ return $hm::Macro::FuncProxy("updated", "fn", $args[0]); }
function updatecount{ return $hm::Macro::FuncProxy("updatecount", "fn", $args[0]); }
function anyclipboard{ return $hm::Macro::FuncProxy("anyclipboard", "fn", $args[0]); }
function inputstates{ return $hm::Macro::FuncProxy("inputstates", "fn", $args[0]); }
function imestate{ return $hm::Macro::FuncProxy("imestate", "fn", $args[0]); }
function browsemode{ return $hm::Macro::FuncProxy("browsemode", "fn", $args[0]); }
function keypressed{ return $hm::Macro::FuncProxy("keypressed", "fn", $args[0]); }
function replay{ return $hm::Macro::FuncProxy("replay", "fn", $args[0]); }
function searchmode{ return $hm::Macro::FuncProxy("searchmode", "fn", $args[0]); }
function searchoption{ return $hm::Macro::FuncProxy("searchoption", "fn", $args[0]); }
function searchoption2{ return $hm::Macro::FuncProxy("searchoption2", "fn", $args[0]); }
function foundtopx{ return $hm::Macro::FuncProxy("foundtopx", "fn", $args[0]); }
function foundtopy{ return $hm::Macro::FuncProxy("foundtopy", "fn", $args[0]); }
function foundendx{ return $hm::Macro::FuncProxy("foundendx", "fn", $args[0]); }
function foundendy{ return $hm::Macro::FuncProxy("foundendy", "fn", $args[0]); }
function foundhilighting{ return $hm::Macro::FuncProxy("foundhilighting", "fn", $args[0]); }
function foundoption{ return $hm::Macro::FuncProxy("foundoption", "fn", $args[0]); }
function readonly{ return $hm::Macro::FuncProxy("readonly", "fn", $args[0]); }
function encode{ return $hm::Macro::FuncProxy("encode", "fn", $args[0]); }
function charset{ return $hm::Macro::FuncProxy("charset", "fn", $args[0]); }
function bom{ return $hm::Macro::FuncProxy("bom", "fn", $args[0]); }
function codepage{ return $hm::Macro::FuncProxy("codepage", "fn", $args[0]); }
function getfocus{ return $hm::Macro::FuncProxy("getfocus", "fn", $args[0]); }
function autocompstate{ return $hm::Macro::FuncProxy("autocompstate", "fn", $args[0]); }
function argcount{ return $hm::Macro::FuncProxy("argcount", "fn", $args[0]); }
function compatiblemode{ return $hm::Macro::FuncProxy("compatiblemode", "fn", $args[0]); }
function carettabmode{ return $hm::Macro::FuncProxy("carettabmode", "fn", $args[0]); }
function return_in_cell_mode{ return $hm::Macro::FuncProxy("return_in_cell_mode", "fn", $args[0]); }
function stophistory{ return $hm::Macro::FuncProxy("stophistory", "fn", $args[0]); }
function fontmode{ return $hm::Macro::FuncProxy("fontmode", "fn", $args[0]); }
function formline{ return $hm::Macro::FuncProxy("formline", "fn", $args[0]); }
function configstate{ return $hm::Macro::FuncProxy("configstate", "fn", $args[0]); }
function fontsize{ return $hm::Macro::FuncProxy("fontsize", "fn", $args[0]); }
function dayofweeknum{ return $hm::Macro::FuncProxy("dayofweeknum", "fn", $args[0]); }
function tickcount{ return $hm::Macro::FuncProxy("tickcount", "fn", $args[0]); }
function foldable{ return $hm::Macro::FuncProxy("foldable", "fn", $args[0]); }
function folded{ return $hm::Macro::FuncProxy("folded", "fn", $args[0]); }
function rangeedittop{ return $hm::Macro::FuncProxy("rangeedittop", "fn", $args[0]); }
function rangeeditend{ return $hm::Macro::FuncProxy("rangeeditend", "fn", $args[0]); }
function rangeeditmode{ return $hm::Macro::FuncProxy("rangeeditmode", "fn", $args[0]); }
function outlinehandle{ return $hm::Macro::FuncProxy("outlinehandle", "fn", $args[0]); }
function outlinesize{ return $hm::Macro::FuncProxy("outlinesize", "fn", $args[0]); }
function outlineitemcount{ return $hm::Macro::FuncProxy("outlineitemcount", "fn", $args[0]); }
function val{ return $hm::Macro::FuncProxy("val", "fn", $args[0]); }
function ascii{ return $hm::Macro::FuncProxy("ascii", "fn", $args[0]); }
function strlen{ return $hm::Macro::FuncProxy("strlen", "fn", $args[0]); }
function strstr{ return $hm::Macro::FuncProxy("strstr", "fn", $args[0]); }
function strrstr{ return $hm::Macro::FuncProxy("strrstr", "fn", $args[0]); }
function wcslen{ return $hm::Macro::FuncProxy("wcslen", "fn", $args[0]); }
function wcsstrstr{ return $hm::Macro::FuncProxy("wcsstrstr", "fn", $args[0]); }
function wcsstrrstr{ return $hm::Macro::FuncProxy("wcsstrrstr", "fn", $args[0]); }
function ucs4len{ return $hm::Macro::FuncProxy("ucs4len", "fn", $args[0]); }
function ucs4strstr{ return $hm::Macro::FuncProxy("ucs4strstr", "fn", $args[0]); }
function ucs4strrstr{ return $hm::Macro::FuncProxy("ucs4strrstr", "fn", $args[0]); }
function cmulen{ return $hm::Macro::FuncProxy("cmulen", "fn", $args[0]); }
function cmustrstr{ return $hm::Macro::FuncProxy("cmustrstr", "fn", $args[0]); }
function cmustrrstr{ return $hm::Macro::FuncProxy("cmustrrstr", "fn", $args[0]); }
function gculen{ return $hm::Macro::FuncProxy("gculen", "fn", $args[0]); }
function gcustrstr{ return $hm::Macro::FuncProxy("gcustrstr", "fn", $args[0]); }
function gcustrrstr{ return $hm::Macro::FuncProxy("gcustrrstr", "fn", $args[0]); }
function wcs_to_char{ return $hm::Macro::FuncProxy("wcs_to_char", "fn", $args[0]); }
function char_to_wcs{ return $hm::Macro::FuncProxy("char_to_wcs", "fn", $args[0]); }
function ucs4_to_char{ return $hm::Macro::FuncProxy("ucs4_to_char", "fn", $args[0]); }
function char_to_ucs4{ return $hm::Macro::FuncProxy("char_to_ucs4", "fn", $args[0]); }
function cmu_to_char{ return $hm::Macro::FuncProxy("cmu_to_char", "fn", $args[0]); }
function char_to_cmu{ return $hm::Macro::FuncProxy("char_to_cmu ", "fn", $args[0]); }
function gcu_to_char{ return $hm::Macro::FuncProxy("gcu_to_char", "fn", $args[0]); }
function char_to_gcu{ return $hm::Macro::FuncProxy("char_to_gcu", "fn", $args[0]); }
function byteindex_to_charindex{ return $hm::Macro::FuncProxy("byteindex_to_charindex", "fn", $args[0]); }
function charindex_to_byteindex{ return $hm::Macro::FuncProxy("charindex_to_byteindex", "fn", $args[0]); }
function findwindow{ return $hm::Macro::FuncProxy("findwindow", "fn", $args[0]); }
function findwindowclass{ return $hm::Macro::FuncProxy("findwindowclass", "fn", $args[0]); }
function sendmessage{ return $hm::Macro::FuncProxy("sendmessage", "fn", $args[0]); }
function xtocolumn{ return $hm::Macro::FuncProxy("xtocolumn", "fn", $args[0]); }
function ytolineno{ return $hm::Macro::FuncProxy("ytolineno", "fn", $args[0]); }
function columntox{ return $hm::Macro::FuncProxy("columntox", "fn", $args[0]); }
function linenotoy{ return $hm::Macro::FuncProxy("linenotoy", "fn", $args[0]); }
function charcount{ return $hm::Macro::FuncProxy("charcount", "fn", $args[0]); }
function existfile{ return $hm::Macro::FuncProxy("existfile", "fn", $args[0]); }
function getmaxinfo{ return $hm::Macro::FuncProxy("getmaxinfo", "fn", $args[0]); }
function keypressedex{ return $hm::Macro::FuncProxy("keypressedex", "fn", $args[0]); }
function setcompatiblemode{ return $hm::Macro::FuncProxy("setcompatiblemode", "fn", $args[0]); }
function inputchar{ return $hm::Macro::FuncProxy("inputchar", "fn", $args[0]); }
function iskeydown{ return $hm::Macro::FuncProxy("iskeydown", "fn", $args[0]); }
function getininum{ return $hm::Macro::FuncProxy("getininum", "fn", $args[0]); }
function getininumw{ return $hm::Macro::FuncProxy("getininumw", "fn", $args[0]); }
function getregnum{ return $hm::Macro::FuncProxy("getregnum", "fn", $args[0]); }
function getconfigcolor{ return $hm::Macro::FuncProxy("getconfigcolor", "fn", $args[0]); }
function hidemaruorder{ return $hm::Macro::FuncProxy("hidemaruorder", "fn", $args[0]); }
function hidemarucount{ return $hm::Macro::FuncProxy("hidemarucount", "fn", $args[0]); }
function findhidemaru{ return $hm::Macro::FuncProxy("findhidemaru", "fn", $args[0]); }
function hidemaruhandle{ return $hm::Macro::FuncProxy("hidemaruhandle", "fn", $args[0]); }
function getcurrenttab{ return $hm::Macro::FuncProxy("getcurrenttab", "fn", $args[0]); }
function gettabhandle{ return $hm::Macro::FuncProxy("gettabhandle", "fn", $args[0]); }
function getclipboardinfo{ return $hm::Macro::FuncProxy("getclipboardinfo", "fn", $args[0]); }
function event{ return $hm::Macro::FuncProxy("event", "fn", $args[0]); }
function geteventnotify{ return $hm::Macro::FuncProxy("geteventnotify", "fn", $args[0]); }
function loaddll{ return $hm::Macro::FuncProxy("loaddll", "fn", $args[0]); }
function dllfunc{ return $hm::Macro::FuncProxy("dllfunc", "fn", $args[0]); }
function dllfuncw{ return $hm::Macro::FuncProxy("dllfuncw", "fn", $args[0]); }
function dllfuncexist{ return $hm::Macro::FuncProxy("dllfuncexist", "fn", $args[0]); }
function createobject{ return $hm::Macro::FuncProxy("createobject", "fn", $args[0]); }
function browserpanehandle{ return $hm::Macro::FuncProxy("browserpanehandle", "fn", $args[0]); }
function browserpanesize{ return $hm::Macro::FuncProxy("browserpanesize", "fn", $args[0]); }
function keyhook{ return $hm::Macro::FuncProxy("keyhook", "fn", $args[0]); }
function registercallback{ return $hm::Macro::FuncProxy("registercallback", "fn", $args[0]); }

function findmarker{ return $hm::Macro::FuncProxy("findmarker", "fs", $args[0]); }
function diff1{ return $hm::Macro::FuncProxy("diff", "fs", $args[0]); }
function reservedmultisel{ return $hm::Macro::FuncProxy("reservedmultisel", "fs", $args[0]); }
function regulardll{ return $hm::Macro::FuncProxy("regulardll", "fs", $args[0]); }
function filename{ return $hm::Macro::FuncProxy("filename", "fs", $args[0]); }
function filename2{ return $hm::Macro::FuncProxy("filename2", "fs", $args[0]); }
function filename3{ return $hm::Macro::FuncProxy("filename3", "fs", $args[0]); }
function basename1{ return $hm::Macro::FuncProxy("basename", "fs", $args[0]); }
function basename2{ return $hm::Macro::FuncProxy("basename2", "fs", $args[0]); }
function basename3{ return $hm::Macro::FuncProxy("basename3", "fs", $args[0]); }
function directory{ return $hm::Macro::FuncProxy("directory", "fs", $args[0]); }
function directory2{ return $hm::Macro::FuncProxy("directory2", "fs", $args[0]); }
function directory3{ return $hm::Macro::FuncProxy("directory3", "fs", $args[0]); }
function filetype2{ return $hm::Macro::FuncProxy("filetype", "fs", $args[0]); }
function currentmacrofilename{ return $hm::Macro::FuncProxy("currentmacrofilename", "fs", $args[0]); }
function currentmacrobasename{ return $hm::Macro::FuncProxy("currentmacrobasename", "fs", $args[0]); }
function currentmacrodirectory{ return $hm::Macro::FuncProxy("currentmacrodirectory", "fs", $args[0]); }
function hidemarudir{ return $hm::Macro::FuncProxy("hidemarudir", "fs", $args[0]); }
function macrodir{ return $hm::Macro::FuncProxy("macrodir", "fs", $args[0]); }
function settingdir{ return $hm::Macro::FuncProxy("settingdir", "fs", $args[0]); }
function backupdir{ return $hm::Macro::FuncProxy("backupdir", "fs", $args[0]); }
function windir{ return $hm::Macro::FuncProxy("windir", "fs", $args[0]); }
function winsysdir{ return $hm::Macro::FuncProxy("winsysdir", "fs", $args[0]); }
function searchbuffer{ return $hm::Macro::FuncProxy("searchbuffer", "fs", $args[0]); }
function targetcolormarker{ return $hm::Macro::FuncProxy("targetcolormarker", "fs", $args[0]); }
function replacebuffer{ return $hm::Macro::FuncProxy("replacebuffer", "fs", $args[0]); }
function grepfilebuffer{ return $hm::Macro::FuncProxy("grepfilebuffer", "fs", $args[0]); }
function grepfolderbuffer{ return $hm::Macro::FuncProxy("grepfolderbuffer", "fs", $args[0]); }
function foundbuffer{ return $hm::Macro::FuncProxy("foundbuffer", "fs", $args[0]); }
function currentconfigset{ return $hm::Macro::FuncProxy("currentconfigset", "fs", $args[0]); }
function fontname{ return $hm::Macro::FuncProxy("fontname", "fs", $args[0]); }
function date2{ return $hm::Macro::FuncProxy("date", "fs", $args[0]); }
function time2{ return $hm::Macro::FuncProxy("time", "fs", $args[0]); }
function year{ return $hm::Macro::FuncProxy("year", "fs", $args[0]); }
function month{ return $hm::Macro::FuncProxy("month", "fs", $args[0]); }
function day{ return $hm::Macro::FuncProxy("day", "fs", $args[0]); }
function hour{ return $hm::Macro::FuncProxy("hour", "fs", $args[0]); }
function minute{ return $hm::Macro::FuncProxy("minute", "fs", $args[0]); }
function second{ return $hm::Macro::FuncProxy("second", "fs", $args[0]); }
function dayofweek{ return $hm::Macro::FuncProxy("dayofweek", "fs", $args[0]); }
function str{ return $hm::Macro::FuncProxy("str", "fs", $args[0]); }
function char{ return $hm::Macro::FuncProxy("char", "fs", $args[0]); }
function unichar{ return $hm::Macro::FuncProxy("unichar", "fs", $args[0]); }
function sprintf2{ return $hm::Macro::FuncProxy("sprintf", "fs", $args[0]); }
function leftstr{ return $hm::Macro::FuncProxy("leftstr", "fs", $args[0]); }
function rightstr{ return $hm::Macro::FuncProxy("rightstr", "fs", $args[0]); }
function midstr{ return $hm::Macro::FuncProxy("midstr", "fs", $args[0]); }
function wcsleftstr{ return $hm::Macro::FuncProxy("wcsleftstr", "fs", $args[0]); }
function wcsrightstr{ return $hm::Macro::FuncProxy("wcsrightstr", "fs", $args[0]); }
function wcsmidstr{ return $hm::Macro::FuncProxy("wcsmidstr", "fs", $args[0]); }
function ucs4leftstr{ return $hm::Macro::FuncProxy("ucs4leftstr", "fs", $args[0]); }
function ucs4rightstr{ return $hm::Macro::FuncProxy("ucs4rightstr", "fs", $args[0]); }
function ucs4midstr{ return $hm::Macro::FuncProxy("ucs4midstr", "fs", $args[0]); }
function cmuleftstr{ return $hm::Macro::FuncProxy("cmuleftstr", "fs", $args[0]); }
function cmurightstr{ return $hm::Macro::FuncProxy("cmurightstr", "fs", $args[0]); }
function cmumidstr{ return $hm::Macro::FuncProxy("cmumidstr", "fs", $args[0]); }
function gculeftstr{ return $hm::Macro::FuncProxy("gculeftstr", "fs", $args[0]); }
function gcurightstr{ return $hm::Macro::FuncProxy("gcurightstr", "fs", $args[0]); }
function gcumidstr{ return $hm::Macro::FuncProxy("gcumidstr", "fs", $args[0]); }
function gettext1{ return $hm::Macro::FuncProxy("gettext", "fs", $args[0]); }
function gettext2{ return $hm::Macro::FuncProxy("gettext2", "fs", $args[0]); }
function gettext_wcs{ return $hm::Macro::FuncProxy("gettext_wcs", "fs", $args[0]); }
function gettext_ucs4{ return $hm::Macro::FuncProxy("gettext_ucs4", "fs", $args[0]); }
function gettext_cmu{ return $hm::Macro::FuncProxy("gettext_cmu", "fs", $args[0]); }
function gettext_gcu{ return $hm::Macro::FuncProxy("gettext_gcu", "fs", $args[0]); }
function getenv{ return $hm::Macro::FuncProxy("getenv", "fs", $args[0]); }
function getgrepfilehist{ return $hm::Macro::FuncProxy("getgrepfilehist", "fs", $args[0]); }
function enumcolormarkerlayer{ return $hm::Macro::FuncProxy("enumcolormarkerlayer", "fs", $args[0]); }
function getfiletime{ return $hm::Macro::FuncProxy("getfiletime", "fs", $args[0]); }
function getoutlineitem{ return $hm::Macro::FuncProxy("getoutlineitem", "fs", $args[0]); }
function getarg{ return $hm::Macro::FuncProxy("getarg", "fs", $args[0]); }
function getautocompitem{ return $hm::Macro::FuncProxy("getautocompitem", "fs", $args[0]); }
function getcolormarker{ return $hm::Macro::FuncProxy("getcolormarker", "fs", $args[0]); }
function getfilehist{ return $hm::Macro::FuncProxy("getfilehist", "fs", $args[0]); }
function getpathhist{ return $hm::Macro::FuncProxy("getpathhist", "fs", $args[0]); }
function getreplacehist{ return $hm::Macro::FuncProxy("getreplacehist", "fs", $args[0]); }
function getsearchhist{ return $hm::Macro::FuncProxy("getsearchhist", "fs", $args[0]); }
function gettagsfile{ return $hm::Macro::FuncProxy("gettagsfile", "fs", $args[0]); }
function gettitle{ return $hm::Macro::FuncProxy("gettitle", "fs", $args[0]); }
function browsefile{ return $hm::Macro::FuncProxy("browsefile", "fs", $args[0]); }
function quote{ return $hm::Macro::FuncProxy("quote", "fs", $args[0]); }
function strreplace{ return $hm::Macro::FuncProxy("strreplace", "fs", $args[0]); }
function getimecandidate{ return $hm::Macro::FuncProxy("getimecandidate", "fs", $args[0]); }
function getdpi{ return $hm::Macro::FuncProxy("getdpi", "fnfo", $args[0]); }

# jsmodeには無いがpowershellには必要
function encodeuri{ return $hm::Macro::FuncProxy("encodeuri", "fs", $args[0]); }
function decodeuri{ return $hm::Macro::FuncProxy("decodeuri", "fs", $args[0]); }

function enumregvalue($arguments){
    $ret = $hm::Macro::Function("enumregvalue", $arguments[0], 0);
    $rethash =  @{}
    $rethash.add("regvalue", $ret.Result);
    $rethash.add("regtype", $ret.Args[1]);
    return $rethash;
}

function getlinecount($arguments) {
    $ret = $hm::Macro::Function("getlinecount", $arguments[0], $arguments[1], 0);
    $rethash =  @{}
    $rethash.add("lineno", $ret.Result);
    $rethash.add("column", $ret.Args[2]);
    return $rethash;
}

# 分岐あり
function hidemaruversion{ return $hm::Macro::FuncProxy("hidemaruversion", "fsn", $args[0]); }

# 分岐あり
function toupper{ return $hm::Macro::FuncProxy("toupper", "fsn", $args[0]); }

# 分岐あり
function tolower{ return $hm::Macro::FuncProxy("tolower", "fsn", $args[0]); }

# 分岐あり
function filter1{ return $hm::Macro::FuncProxy("filter", "fsn", $args[0]); }

function input{ return $hm::Macro::FuncProxy("input", "fs", $args[0]); }
function getinistr{ return $hm::Macro::FuncProxy("getinistr", "fs", $args[0]); }
function getinistrw{ return $hm::Macro::FuncProxy("getinistrw", "fs", $args[0]); }
function getregbinary{ return $hm::Macro::FuncProxy("getregbinary", "fs", $args[0]); }
function getregstr{ return $hm::Macro::FuncProxy("getregstr", "fs", $args[0]); }
function enumregkey{ return $hm::Macro::FuncProxy("enumregkey", "fs", $args[0]); }
function gettabstop{ return $hm::Macro::FuncProxy("gettabstop", "fs", $args[0]); }
function getstaticvariable{ return $hm::Macro::FuncProxy("getstaticvariable", "fs", $args[0]); }
function getclipboard{ return $hm::Macro::FuncProxy("getclipboard", "fs", $args[0]); }
function dllfuncstr{ return $hm::Macro::FuncProxy("dllfuncstr", "fs", $args[0]); }
function dllfuncstrw{ return $hm::Macro::FuncProxy("dllfuncstrw", "fs", $args[0]); }
function getloaddllfile{ return $hm::Macro::FuncProxy("getloaddllfile", "fs", $args[0]); }
function browserpaneurl{ return $hm::Macro::FuncProxy("browserpaneurl", "fs", $args[0]); }
function browserpanecommand{ return $hm::Macro::FuncProxy("browserpanecommand", "fs", $args[0]); }
function renderpanecommand{ return $hm::Macro::FuncProxy("renderpanecommand", "fs", $args[0]); }
function getselectedrange{ return $hm::Macro::FuncProxy("getselectedrange", "fs", $args[0]); }

function refreshdatetime{ return $hm::Macro::FuncProxy("refreshdatetime", "st", $args[0]); }
function newfile{ return $hm::Macro::FuncProxy("newfile", "st", $args[0]); }
function openfile{ return $hm::Macro::FuncProxy("openfile", "st", $args[0]); }
function loadfile{ return $hm::Macro::FuncProxy("loadfile", "st", $args[0]); }
function openfilepart{ return $hm::Macro::FuncProxy("openfilepart", "st", $args[0]); }
function closenew{ return $hm::Macro::FuncProxy("closenew", "st", $args[0]); }
function saveas{ return $hm::Macro::FuncProxy("saveas", "st", $args[0]); }
function appendsave{ return $hm::Macro::FuncProxy("appendsave", "st", $args[0]); }
function changename{ return $hm::Macro::FuncProxy("changename", "st", $args[0]); }
function insertfile{ return $hm::Macro::FuncProxy("insertfile", "st", $args[0]); }
function readonlyopenfile{ return $hm::Macro::FuncProxy("readonlyopenfile", "st", $args[0]); }
function readonlyloadfile{ return $hm::Macro::FuncProxy("readonlyloadfile", "st", $args[0]); }
function save{ return $hm::Macro::FuncProxy("save", "st", $args[0]); }
function savelf{ return $hm::Macro::FuncProxy("savelf", "st", $args[0]); }
function print1{ return $hm::Macro::FuncProxy("print", "st", $args[0]); }
function saveall{ return $hm::Macro::FuncProxy("saveall", "st", $args[0]); }
function saveupdatedall{ return $hm::Macro::FuncProxy("saveupdatedall", "st", $args[0]); }
function openbyshell{ return $hm::Macro::FuncProxy("openbyshell", "st", $args[0]); }
function openbyhidemaru{ return $hm::Macro::FuncProxy("openbyhidemaru", "st", $args[0]); }
function setfilehist{ return $hm::Macro::FuncProxy("setfilehist", "st", $args[0]); }
function setpathhist{ return $hm::Macro::FuncProxy("setpathhist", "st", $args[0]); }
function setencode{ return $hm::Macro::FuncProxy("setencode", "st", $args[0]); }
function stophistoryswitch{ return $hm::Macro::FuncProxy("stophistoryswitch", "st", $args[0]); }
function deletefilehist{ return $hm::Macro::FuncProxy("deletefilehist", "st", $args[0]); }
function OPENdialog{ return $hm::Macro::FuncProxy("OPEN", "st", $args[0]); }
function SAVEASdialog{ return $hm::Macro::FuncProxy("SAVEAS", "st", $args[0]); }
function LOADdialog{ return $hm::Macro::FuncProxy("LOAD", "st", $args[0]); }
function APPENDSAVEdialog{ return $hm::Macro::FuncProxy("APPENDSAVE", "st", $args[0]); }
function CHANGENAMEdialog{ return $hm::Macro::FuncProxy("CHANGENAME", "st", $args[0]); }
function INSERTFILEdialog{ return $hm::Macro::FuncProxy("INSERTFILE", "st", $args[0]); }
function OPENFILEPARTdialog{ return $hm::Macro::FuncProxy("OPENFILEPART", "st", $args[0]); }
function deletefile{ return $hm::Macro::FuncProxy("deletefile", "st", $args[0]); }
function propertydialog{ return $hm::Macro::FuncProxy("propertydialog", "st", $args[0]); }

function up{ return $hm::Macro::FuncProxy("up", "st", $args[0]); }
function down{ return $hm::Macro::FuncProxy("down", "st", $args[0]); }
function right{ return $hm::Macro::FuncProxy("right", "st", $args[0]); }
function left{ return $hm::Macro::FuncProxy("left", "st", $args[0]); }
function up_nowrap{ return $hm::Macro::FuncProxy("up_nowrap", "st", $args[0]); }
function down_nowrap{ return $hm::Macro::FuncProxy("down_nowrap", "st", $args[0]); }
function shiftup{ return $hm::Macro::FuncProxy("shiftup", "st", $args[0]); }
function shiftdown{ return $hm::Macro::FuncProxy("shiftdown", "st", $args[0]); }
function shiftright{ return $hm::Macro::FuncProxy("shiftright", "st", $args[0]); }
function shiftleft{ return $hm::Macro::FuncProxy("shiftleft", "st", $args[0]); }
function shifthome{ return $hm::Macro::FuncProxy("shifthome", "st", $args[0]); }
function shiftend{ return $hm::Macro::FuncProxy("shiftend", "st", $args[0]); }
function gofileend{ return $hm::Macro::FuncProxy("gofileend", "st", $args[0]); }
function gofiletop{ return $hm::Macro::FuncProxy("gofiletop", "st", $args[0]); }
function gokakko{ return $hm::Macro::FuncProxy("gokakko", "st", $args[0]); }
function golastupdated{ return $hm::Macro::FuncProxy("golastupdated", "st", $args[0]); }
function goleftkakko{ return $hm::Macro::FuncProxy("goleftkakko", "st", $args[0]); }
function gorightkakko{ return $hm::Macro::FuncProxy("gorightkakko", "st", $args[0]); }
function golinetop{ return $hm::Macro::FuncProxy("golinetop", "st", $args[0]); }
function golinetop2{ return $hm::Macro::FuncProxy("golinetop2", "st", $args[0]); }
function golineend{ return $hm::Macro::FuncProxy("golineend", "st", $args[0]); }
function golineend2{ return $hm::Macro::FuncProxy("golineend2", "st", $args[0]); }
function golineend3{ return $hm::Macro::FuncProxy("golineend3", "st", $args[0]); }
function goscreenend{ return $hm::Macro::FuncProxy("goscreenend", "st", $args[0]); }
function goscreentop{ return $hm::Macro::FuncProxy("goscreentop", "st", $args[0]); }
function jump{ return $hm::Macro::FuncProxy("jump", "st", $args[0]); }
function moveto{ return $hm::Macro::FuncProxy("moveto", "st", $args[0]); }
function movetolineno{ return $hm::Macro::FuncProxy("movetolineno", "st", $args[0]); }
function movetoview{ return $hm::Macro::FuncProxy("movetoview", "st", $args[0]); }
function moveto2{ return $hm::Macro::FuncProxy("moveto2", "st", $args[0]); }
function moveto_wcs{ return $hm::Macro::FuncProxy("moveto_wcs", "st", $args[0]); }
function moveto_ucs4{ return $hm::Macro::FuncProxy("moveto_ucs4", "st", $args[0]); }
function moveto_cmu{ return $hm::Macro::FuncProxy("moveto_cmu", "st", $args[0]); }
function moveto_gcu{ return $hm::Macro::FuncProxy("moveto_gcu", "st", $args[0]); }
function nextpage{ return $hm::Macro::FuncProxy("nextpage", "st", $args[0]); }
function prevpage{ return $hm::Macro::FuncProxy("prevpage", "st", $args[0]); }
function halfnextpage{ return $hm::Macro::FuncProxy("halfnextpage", "st", $args[0]); }
function halfprevpage{ return $hm::Macro::FuncProxy("halfprevpage", "st", $args[0]); }
function rollup{ return $hm::Macro::FuncProxy("rollup", "st", $args[0]); }
function rollup2{ return $hm::Macro::FuncProxy("rollup2", "st", $args[0]); }
function rolldown{ return $hm::Macro::FuncProxy("rolldown", "st", $args[0]); }
function rolldown2{ return $hm::Macro::FuncProxy("rolldown2", "st", $args[0]); }
function wordleft{ return $hm::Macro::FuncProxy("wordleft", "st", $args[0]); }
function wordleft2{ return $hm::Macro::FuncProxy("wordleft2", "st", $args[0]); }
function wordright{ return $hm::Macro::FuncProxy("wordright", "st", $args[0]); }
function wordright2{ return $hm::Macro::FuncProxy("wordright2", "st", $args[0]); }
function wordrightsalnen{ return $hm::Macro::FuncProxy("wordrightsalnen", "st", $args[0]); }
function wordrightsalnen2{ return $hm::Macro::FuncProxy("wordrightsalnen2", "st", $args[0]); }
function gowordtop{ return $hm::Macro::FuncProxy("gowordtop", "st", $args[0]); }
function gowordend{ return $hm::Macro::FuncProxy("gowordend", "st", $args[0]); }
function gowordtop2{ return $hm::Macro::FuncProxy("gowordtop2", "st", $args[0]); }
function gowordend2{ return $hm::Macro::FuncProxy("gowordend2", "st", $args[0]); }
function prevpos{ return $hm::Macro::FuncProxy("prevpos", "st", $args[0]); }
function prevposhistback{ return $hm::Macro::FuncProxy("prevposhistback", "st", $args[0]); }
function prevposhistforward{ return $hm::Macro::FuncProxy("prevposhistforward", "st", $args[0]); }
function setmark{ return $hm::Macro::FuncProxy("setmark", "st", $args[0]); }
function clearallmark{ return $hm::Macro::FuncProxy("clearallmark", "st", $args[0]); }
function marklist{ return $hm::Macro::FuncProxy("marklist", "st", $args[0]); }
function nextmark{ return $hm::Macro::FuncProxy("nextmark", "st", $args[0]); }
function prevmark{ return $hm::Macro::FuncProxy("prevmark", "st", $args[0]); }
function prevfunc{ return $hm::Macro::FuncProxy("prevfunc", "st", $args[0]); }
function nextfunc{ return $hm::Macro::FuncProxy("nextfunc", "st", $args[0]); }
function nextresult{ return $hm::Macro::FuncProxy("nextresult", "st", $args[0]); }
function prevresult{ return $hm::Macro::FuncProxy("prevresult", "st", $args[0]); }
function gotagpair{ return $hm::Macro::FuncProxy("gotagpair", "st", $args[0]); }
function backtab{ return $hm::Macro::FuncProxy("backtab", "st", $args[0]); }
function forwardtab{ return $hm::Macro::FuncProxy("forwardtab", "st", $args[0]); }
function appendcopy{ return $hm::Macro::FuncProxy("appendcopy", "st", $args[0]); }
function appendcut{ return $hm::Macro::FuncProxy("appendcut", "st", $args[0]); }
function beginrect{ return $hm::Macro::FuncProxy("beginrect", "st", $args[0]); }
function beginrectmulti{ return $hm::Macro::FuncProxy("beginrectmulti", "st", $args[0]); }
function beginsel{ return $hm::Macro::FuncProxy("beginsel", "st", $args[0]); }
function beginlinesel{ return $hm::Macro::FuncProxy("beginlinesel", "st", $args[0]); }
function endsel{ return $hm::Macro::FuncProxy("endsel", "st", $args[0]); }
function copy1{ return $hm::Macro::FuncProxy("copy", "st", $args[0]); }
function copy2{ return $hm::Macro::FuncProxy("copy2", "st", $args[0]); }
function cut{ return $hm::Macro::FuncProxy("cut", "st", $args[0]); }
function copyline{ return $hm::Macro::FuncProxy("copyline", "st", $args[0]); }
function cutline{ return $hm::Macro::FuncProxy("cutline", "st", $args[0]); }
function cutafter{ return $hm::Macro::FuncProxy("cutafter", "st", $args[0]); }
function copyword{ return $hm::Macro::FuncProxy("copyword", "st", $args[0]); }
function cutword{ return $hm::Macro::FuncProxy("cutword", "st", $args[0]); }
function escapeselect{ return $hm::Macro::FuncProxy("escapeselect", "st", $args[0]); }
function paste{ return $hm::Macro::FuncProxy("paste", "st", $args[0]); }
function pasterect{ return $hm::Macro::FuncProxy("pasterect", "st", $args[0]); }
function refpaste{ return $hm::Macro::FuncProxy("refpaste", "st", $args[0]); }
function refcopy{ return $hm::Macro::FuncProxy("refcopy", "st", $args[0]); }
function refcopy2{ return $hm::Macro::FuncProxy("refcopy2", "st", $args[0]); }
function selectall{ return $hm::Macro::FuncProxy("selectall", "st", $args[0]); }
function selectline{ return $hm::Macro::FuncProxy("selectline", "st", $args[0]); }
function selectword{ return $hm::Macro::FuncProxy("selectword", "st", $args[0]); }
function selectword2{ return $hm::Macro::FuncProxy("selectword2", "st", $args[0]); }
function showcliphist{ return $hm::Macro::FuncProxy("showcliphist", "st", $args[0]); }
function poppaste{ return $hm::Macro::FuncProxy("poppaste", "st", $args[0]); }
function poppaste2{ return $hm::Macro::FuncProxy("poppaste2", "st", $args[0]); }
function getcliphist{ return $hm::Macro::FuncProxy("getcliphist", "st", $args[0]); }
function clearcliphist{ return $hm::Macro::FuncProxy("clearcliphist", "st", $args[0]); }
function selectcfunc{ return $hm::Macro::FuncProxy("selectcfunc", "st", $args[0]); }
function copyurl{ return $hm::Macro::FuncProxy("copyurl", "st", $args[0]); }
function copyformed{ return $hm::Macro::FuncProxy("copyformed", "st", $args[0]); }
function selectcolumn{ return $hm::Macro::FuncProxy("selectcolumn", "st", $args[0]); }
function tomultiselect{ return $hm::Macro::FuncProxy("tomultiselect", "st", $args[0]); }
function invertselection{ return $hm::Macro::FuncProxy("invertselection", "st", $args[0]); }
function reservemultisel{ return $hm::Macro::FuncProxy("reservemultisel", "st", $args[0]); }
function selectreservedmultisel{ return $hm::Macro::FuncProxy("selectreservedmultisel", "st", $args[0]); }
function clearreservedmultisel{ return $hm::Macro::FuncProxy("clearreservedmultisel", "st", $args[0]); }
function clearreservedmultiselall{ return $hm::Macro::FuncProxy("clearreservedmultiselall", "st", $args[0]); }
function backspace{ return $hm::Macro::FuncProxy("backspace", "st", $args[0]); }
function delete{ return $hm::Macro::FuncProxy("del", "st", $args[0]); }
function deleteafter{ return $hm::Macro::FuncProxy("deleteafter", "st", $args[0]); }
function deletebefore{ return $hm::Macro::FuncProxy("deletebefore", "st", $args[0]); }
function deleteline{ return $hm::Macro::FuncProxy("deleteline", "st", $args[0]); }
function deleteline2{ return $hm::Macro::FuncProxy("deleteline2", "st", $args[0]); }
function deleteword{ return $hm::Macro::FuncProxy("deleteword", "st", $args[0]); }
function deletewordall{ return $hm::Macro::FuncProxy("deletewordall", "st", $args[0]); }
function deletewordfront{ return $hm::Macro::FuncProxy("deletewordfront", "st", $args[0]); }
function dupline{ return $hm::Macro::FuncProxy("dupline", "st", $args[0]); }
function insertline{ return $hm::Macro::FuncProxy("insertline", "st", $args[0]); }
function insertreturn{ return $hm::Macro::FuncProxy("insertreturn", "st", $args[0]); }
function tab{ return $hm::Macro::FuncProxy("tab", "st", $args[0]); }
function undelete{ return $hm::Macro::FuncProxy("undelete", "st", $args[0]); }
function undo{ return $hm::Macro::FuncProxy("undo", "st", $args[0]); }
function redo{ return $hm::Macro::FuncProxy("redo", "st", $args[0]); }
function casechange{ return $hm::Macro::FuncProxy("casechange", "st", $args[0]); }
function indent{ return $hm::Macro::FuncProxy("indent", "st", $args[0]); }
function unindent{ return $hm::Macro::FuncProxy("unindent", "st", $args[0]); }
function shifttab{ return $hm::Macro::FuncProxy("shifttab", "st", $args[0]); }
function tospace{ return $hm::Macro::FuncProxy("tospace", "st", $args[0]); }
function totab{ return $hm::Macro::FuncProxy("totab", "st", $args[0]); }
function tohankaku{ return $hm::Macro::FuncProxy("tohankaku", "st", $args[0]); }
function tozenkakuhira{ return $hm::Macro::FuncProxy("tozenkakuhira", "st", $args[0]); }
function tozenkakukata{ return $hm::Macro::FuncProxy("tozenkakukata", "st", $args[0]); }
function capslockforgot{ return $hm::Macro::FuncProxy("capslockforgot", "st", $args[0]); }
function imeconvforgot{ return $hm::Macro::FuncProxy("imeconvforgot", "st", $args[0]); }
function reopen{ return $hm::Macro::FuncProxy("reopen", "st", $args[0]); }
function filtermenu{ return $hm::Macro::FuncProxy("filtermenu", "st", $args[0]); }
function autocomplete{ return $hm::Macro::FuncProxy("autocomplete", "st", $args[0]); }
function form{ return $hm::Macro::FuncProxy("form", "st", $args[0]); }
function unform{ return $hm::Macro::FuncProxy("unform", "st", $args[0]); }
function showformline{ return $hm::Macro::FuncProxy("showformline", "st", $args[0]); }
function clearundobuffer{ return $hm::Macro::FuncProxy("clearundobuffer", "st", $args[0]); }
function template{ return $hm::Macro::FuncProxy("template", "st", $args[0]); }
function find1{ return $hm::Macro::FuncProxy("find", "st", $args[0]); }
function find2{ return $hm::Macro::FuncProxy("find2", "st", $args[0]); }
function findword{ return $hm::Macro::FuncProxy("findword", "st", $args[0]); }
function replace1{ return $hm::Macro::FuncProxy("replace", "st", $args[0]); }
function replaceall{ return $hm::Macro::FuncProxy("replaceall", "st", $args[0]); }
function replaceallfast{ return $hm::Macro::FuncProxy("replaceallfast", "st", $args[0]); }
function replaceallquick{ return $hm::Macro::FuncProxy("replaceallquick", "st", $args[0]); }
function finddown{ return $hm::Macro::FuncProxy("finddown", "st", $args[0]); }
function finddown2{ return $hm::Macro::FuncProxy("finddown2", "st", $args[0]); }
function findup{ return $hm::Macro::FuncProxy("findup", "st", $args[0]); }
function findup2{ return $hm::Macro::FuncProxy("findup2", "st", $args[0]); }
function getsearch{ return $hm::Macro::FuncProxy("getsearch", "st", $args[0]); }
function gosearchstarted{ return $hm::Macro::FuncProxy("gosearchstarted", "st", $args[0]); }
function setsearch{ return $hm::Macro::FuncProxy("setsearch", "st", $args[0]); }
function setsearchhist{ return $hm::Macro::FuncProxy("setsearchhist", "st", $args[0]); }
function setreplace{ return $hm::Macro::FuncProxy("setreplace", "st", $args[0]); }
function setreplacehist{ return $hm::Macro::FuncProxy("setreplacehist", "st", $args[0]); }
function setgrepfile{ return $hm::Macro::FuncProxy("setgrepfile", "st", $args[0]); }
function forceinselect{ return $hm::Macro::FuncProxy("forceinselect", "st", $args[0]); }
function goupdatedown{ return $hm::Macro::FuncProxy("goupdatedown", "st", $args[0]); }
function goupdateup{ return $hm::Macro::FuncProxy("goupdateup", "st", $args[0]); }
function clearupdates{ return $hm::Macro::FuncProxy("clearupdates", "st", $args[0]); }
function grep{ return $hm::Macro::FuncProxy("grep", "st", $args[0]); }
function grepdialog{ return $hm::Macro::FuncProxy("grepdialog", "st", $args[0]); }
function grepdialog2{ return $hm::Macro::FuncProxy("grepdialog2", "st", $args[0]); }
function localgrep{ return $hm::Macro::FuncProxy("localgrep", "st", $args[0]); }
function grepreplace{ return $hm::Macro::FuncProxy("grepreplace", "st", $args[0]); }
function grepreplacedialog2{ return $hm::Macro::FuncProxy("grepreplacedialog2", "st", $args[0]); }
function escapeinselect{ return $hm::Macro::FuncProxy("escapeinselect", "st", $args[0]); }
function hilightfound{ return $hm::Macro::FuncProxy("hilightfound", "st", $args[0]); }
function colormarker{ return $hm::Macro::FuncProxy("colormarker", "st", $args[0]); }
function nextcolormarker{ return $hm::Macro::FuncProxy("nextcolormarker", "st", $args[0]); }
function prevcolormarker{ return $hm::Macro::FuncProxy("prevcolormarker", "st", $args[0]); }
function colormarkerdialog{ return $hm::Macro::FuncProxy("colormarkerdialog", "st", $args[0]); }
function deletecolormarker{ return $hm::Macro::FuncProxy("deletecolormarker", "st", $args[0]); }
function deletecolormarkerall{ return $hm::Macro::FuncProxy("deletecolormarkerall", "st", $args[0]); }
function selectcolormarker{ return $hm::Macro::FuncProxy("selectcolormarker", "st", $args[0]); }
function selectallfound{ return $hm::Macro::FuncProxy("selectallfound", "st", $args[0]); }
function colormarkerallfound{ return $hm::Macro::FuncProxy("colormarkerallfound", "st", $args[0]); }
function clearcolormarkerallfound{ return $hm::Macro::FuncProxy("clearcolormarkerallfound", "st", $args[0]); }
function foundlist{ return $hm::Macro::FuncProxy("foundlist", "st", $args[0]); }
function foundlistoutline{ return $hm::Macro::FuncProxy("foundlistoutline", "st", $args[0]); }
function findmarkerlist{ return $hm::Macro::FuncProxy("findmarkerlist", "st", $args[0]); }
function selectinselect{ return $hm::Macro::FuncProxy("selectinselect", "st", $args[0]); }
function setinselect2{ return $hm::Macro::FuncProxy("setinselect2", "st", $args[0]); }
function settargetcolormarker{ return $hm::Macro::FuncProxy("settargetcolormarker", "st", $args[0]); }
function colormarkersnapshot{ return $hm::Macro::FuncProxy("colormarkersnapshot", "st", $args[0]); }
function restoredesktop{ return $hm::Macro::FuncProxy("restoredesktop", "st", $args[0]); }
function savedesktop{ return $hm::Macro::FuncProxy("savedesktop", "st", $args[0]); }
function scrolllink{ return $hm::Macro::FuncProxy("scrolllink", "st", $args[0]); }
function split{ return $hm::Macro::FuncProxy("split", "st", $args[0]); }
function setsplitinfo{ return $hm::Macro::FuncProxy("setsplitinfo", "st", $args[0]); }
function splitswitch{ return $hm::Macro::FuncProxy("splitswitch", "st", $args[0]); }
function windowcascade{ return $hm::Macro::FuncProxy("windowcascade", "st", $args[0]); }
function windowhorz{ return $hm::Macro::FuncProxy("windowhorz", "st", $args[0]); }
function windowtiling{ return $hm::Macro::FuncProxy("windowtiling", "st", $args[0]); }
function windowvert{ return $hm::Macro::FuncProxy("windowvert", "st", $args[0]); }
function windowlist{ return $hm::Macro::FuncProxy("windowlist", "st", $args[0]); }
function compfile{ return $hm::Macro::FuncProxy("compfile", "st", $args[0]); }
function COMPFILEdialog{ return $hm::Macro::FuncProxy("COMPFILE", "st", $args[0]); }
function nextcompfile{ return $hm::Macro::FuncProxy("nextcompfile", "st", $args[0]); }
function prevcompfile{ return $hm::Macro::FuncProxy("prevcompfile", "st", $args[0]); }
function alwaystopswitch{ return $hm::Macro::FuncProxy("alwaystopswitch", "st", $args[0]); }
function settabmode{ return $hm::Macro::FuncProxy("settabmode", "st", $args[0]); }
function settabgroup{ return $hm::Macro::FuncProxy("settabgroup", "st", $args[0]); }
function settaborder{ return $hm::Macro::FuncProxy("settaborder", "st", $args[0]); }
function iconthistab{ return $hm::Macro::FuncProxy("iconthistab", "st", $args[0]); }
function fullscreen{ return $hm::Macro::FuncProxy("fullscreen", "st", $args[0]); }
function backtagjump{ return $hm::Macro::FuncProxy("backtagjump", "st", $args[0]); }
function directtagjump{ return $hm::Macro::FuncProxy("directtagjump", "st", $args[0]); }
function freecursorswitch{ return $hm::Macro::FuncProxy("freecursorswitch", "st", $args[0]); }
function imeswitch{ return $hm::Macro::FuncProxy("imeswitch", "st", $args[0]); }
function imeregisterword{ return $hm::Macro::FuncProxy("imeregisterword", "st", $args[0]); }
function help1{ return $hm::Macro::FuncProxy("help", "st", $args[0]); }
function help2{ return $hm::Macro::FuncProxy("help2", "st", $args[0]); }
function help3{ return $hm::Macro::FuncProxy("help3", "st", $args[0]); }
function help4{ return $hm::Macro::FuncProxy("help4", "st", $args[0]); }
function help5{ return $hm::Macro::FuncProxy("help5", "st", $args[0]); }
function help6{ return $hm::Macro::FuncProxy("help6", "st", $args[0]); }
function hidemaruhelp{ return $hm::Macro::FuncProxy("hidemaruhelp", "st", $args[0]); }
function macrohelp{ return $hm::Macro::FuncProxy("macrohelp", "st", $args[0]); }
function overwriteswitch{ return $hm::Macro::FuncProxy("overwriteswitch", "st", $args[0]); }
function readonlyswitch{ return $hm::Macro::FuncProxy("readonlyswitch", "st", $args[0]); }
function showcode{ return $hm::Macro::FuncProxy("showcode", "st", $args[0]); }
function showcharcount{ return $hm::Macro::FuncProxy("showcharcount", "st", $args[0]); }
function showlineno{ return $hm::Macro::FuncProxy("showlineno", "st", $args[0]); }
function tagjump{ return $hm::Macro::FuncProxy("tagjump", "st", $args[0]); }
function redraw{ return $hm::Macro::FuncProxy("redraw", "st", $args[0]); }
function browsemodeswitch{ return $hm::Macro::FuncProxy("browsemodeswitch", "st", $args[0]); }
function clist{ return $hm::Macro::FuncProxy("clist", "st", $args[0]); }
function clearupdated{ return $hm::Macro::FuncProxy("clearupdated", "st", $args[0]); }
function refreshtabstop{ return $hm::Macro::FuncProxy("refreshtabstop", "st", $args[0]); }
function refreshtabstop_pause{ return $hm::Macro::FuncProxy("refreshtabstop_pause", "st", $args[0]); }
function refreshtabstop_shrink{ return $hm::Macro::FuncProxy("refreshtabstop_shrink", "st", $args[0]); }
function refreshtabstop_current{ return $hm::Macro::FuncProxy("refreshtabstop_current", "st", $args[0]); }
function autospellcheckswitch{ return $hm::Macro::FuncProxy("autospellcheckswitch", "st", $args[0]); }
function spellcheckdialog{ return $hm::Macro::FuncProxy("spellcheckdialog", "st", $args[0]); }
function savebacktagjump{ return $hm::Macro::FuncProxy("savebacktagjump", "st", $args[0]); }
function fold{ return $hm::Macro::FuncProxy("fold", "st", $args[0]); }
function unfold{ return $hm::Macro::FuncProxy("unfold", "st", $args[0]); }
function nextfoldable{ return $hm::Macro::FuncProxy("nextfoldable", "st", $args[0]); }
function prevfoldable{ return $hm::Macro::FuncProxy("prevfoldable", "st", $args[0]); }
function selectfoldable{ return $hm::Macro::FuncProxy("selectfoldable", "st", $args[0]); }
function foldall{ return $hm::Macro::FuncProxy("foldall", "st", $args[0]); }
function unfoldall{ return $hm::Macro::FuncProxy("unfoldall", "st", $args[0]); }
function rangeeditin{ return $hm::Macro::FuncProxy("rangeeditin", "st", $args[0]); }
function rangeeditout{ return $hm::Macro::FuncProxy("rangeeditout", "st", $args[0]); }
function nextoutlineitem{ return $hm::Macro::FuncProxy("nextoutlineitem", "st", $args[0]); }
function prevoutlineitem{ return $hm::Macro::FuncProxy("prevoutlineitem", "st", $args[0]); }
function showoutline{ return $hm::Macro::FuncProxy("showoutline", "st", $args[0]); }
function showoutlinebar{ return $hm::Macro::FuncProxy("showoutlinebar", "st", $args[0]); }
function showfoldingbar{ return $hm::Macro::FuncProxy("showfoldingbar", "st", $args[0]); }
function syncoutline{ return $hm::Macro::FuncProxy("syncoutline", "st", $args[0]); }
function refreshoutline{ return $hm::Macro::FuncProxy("refreshoutline", "st", $args[0]); }
function setoutlinesize{ return $hm::Macro::FuncProxy("setoutlinesize", "st", $args[0]); }
function beep{ return $hm::Macro::FuncProxy("beep", "st", $args[0]); }
function play{ return $hm::Macro::FuncProxy("play", "st", $args[0]); }
function playsync{ return $hm::Macro::FuncProxy("playsync", "st", $args[0]); }
function debuginfo{ return $hm::Macro::FuncProxy("debuginfo", "st", $args[0]); }
function showvars{ return $hm::Macro::FuncProxy("showvars", "st", $args[0]); }
function title{ return $hm::Macro::FuncProxy("title", "st", $args[0]); }
function run{ return $hm::Macro::FuncProxy("run", "st", $args[0]); }
function runsync{ return $hm::Macro::FuncProxy("runsync", "st", $args[0]); }
function runsync2{ return $hm::Macro::FuncProxy("runsync2", "st", $args[0]); }
function runex{ return $hm::Macro::FuncProxy("runex", "st", $args[0]); }
function disabledraw{ return $hm::Macro::FuncProxy("disabledraw", "st", $args[0]); }
function enabledraw{ return $hm::Macro::FuncProxy("enabledraw", "st", $args[0]); }
function disabledraw2{ return $hm::Macro::FuncProxy("disabledraw2", "st", $args[0]); }
function enablebreak{ return $hm::Macro::FuncProxy("enablebreak", "st", $args[0]); }
function disablebreak{ return $hm::Macro::FuncProxy("disablebreak", "st", $args[0]); }
function disableinvert{ return $hm::Macro::FuncProxy("disableinvert", "st", $args[0]); }
function enableinvert{ return $hm::Macro::FuncProxy("enableinvert", "st", $args[0]); }
function disableerrormsg{ return $hm::Macro::FuncProxy("disableerrormsg", "st", $args[0]); }
function enableerrormsg{ return $hm::Macro::FuncProxy("enableerrormsg", "st", $args[0]); }
function disablehistory{ return $hm::Macro::FuncProxy("disablehistory", "st", $args[0]); }
function sleep1{ return $hm::Macro::FuncProxy("sleep", "st", $args[0]); }
function setfloatmode{ return $hm::Macro::FuncProxy("setfloatmode", "st", $args[0]); }
function seterrormode{ return $hm::Macro::FuncProxy("seterrormode", "fn", $args[0]); }
function setbackgroundmode{ return $hm::Macro::FuncProxy("setbackgroundmode", "st", $args[0]); }
function inputpos{ return $hm::Macro::FuncProxy("inputpos", "st", $args[0]); }
function menu{ return $hm::Macro::FuncProxy("menu", "st", $args[0]); }
function mousemenu{ return $hm::Macro::FuncProxy("mousemenu", "st", $args[0]); }
function setmenudelay{ return $hm::Macro::FuncProxy("setmenudelay", "st", $args[0]); }
function writeininum{ return $hm::Macro::FuncProxy("writeininum", "st", $args[0]); }
function writeininumw{ return $hm::Macro::FuncProxy("writeininumw", "st", $args[0]); }
function writeinistr{ return $hm::Macro::FuncProxy("writeinistr", "st", $args[0]); }
function writeinistrw{ return $hm::Macro::FuncProxy("writeinistrw", "st", $args[0]); }
function openreg{ return $hm::Macro::FuncProxy("openreg", "st", $args[0]); }
function createreg{ return $hm::Macro::FuncProxy("createreg", "st", $args[0]); }
function closereg{ return $hm::Macro::FuncProxy("closereg", "st", $args[0]); }
function writeregbinary{ return $hm::Macro::FuncProxy("writeregbinary", "st", $args[0]); }
function writeregnum{ return $hm::Macro::FuncProxy("writeregnum", "st", $args[0]); }
function writeregstr{ return $hm::Macro::FuncProxy("writeregstr", "st", $args[0]); }
function deletereg{ return $hm::Macro::FuncProxy("deletereg", "st", $args[0]); }
function configset{ return $hm::Macro::FuncProxy("configset", "st", $args[0]); }
function config{ return $hm::Macro::FuncProxy("config", "st", $args[0]); }
function configcolor{ return $hm::Macro::FuncProxy("configcolor", "st", $args[0]); }
function saveconfig{ return $hm::Macro::FuncProxy("saveconfig", "st", $args[0]); }
function setconfigstate{ return $hm::Macro::FuncProxy("setconfigstate", "st", $args[0]); }
function setfiletype{ return $hm::Macro::FuncProxy("setfiletype", "st", $args[0]); }
function envchanged{ return $hm::Macro::FuncProxy("envchanged", "st", $args[0]); }
function loadkeyassign{ return $hm::Macro::FuncProxy("loadkeyassign", "st", $args[0]); }
function savekeyassign{ return $hm::Macro::FuncProxy("savekeyassign", "st", $args[0]); }
function loadhilight{ return $hm::Macro::FuncProxy("loadhilight", "st", $args[0]); }
function savehilight{ return $hm::Macro::FuncProxy("savehilight", "st", $args[0]); }
function loadbookmark{ return $hm::Macro::FuncProxy("loadbookmark", "st", $args[0]); }
function savebookmark{ return $hm::Macro::FuncProxy("savebookmark", "st", $args[0]); }
function setfontchangemode{ return $hm::Macro::FuncProxy("setfontchangemode", "st", $args[0]); }
function settabstop{ return $hm::Macro::FuncProxy("settabstop", "st", $args[0]); }
function convert_return_in_cell{ return $hm::Macro::FuncProxy("convert_return_in_cell", "st", $args[0]); }
function showwindow{ return $hm::Macro::FuncProxy("showwindow", "st", $args[0]); }
function setmonitor{ return $hm::Macro::FuncProxy("setmonitor", "st", $args[0]); }
function setwindowpos{ return $hm::Macro::FuncProxy("setwindowpos", "st", $args[0]); }
function setwindowsize{ return $hm::Macro::FuncProxy("setwindowsize", "st", $args[0]); }
function setfocus{ return $hm::Macro::FuncProxy("setfocus", "st", $args[0]); }
function begingroupundo{ return $hm::Macro::FuncProxy("begingroupundo", "st", $args[0]); }
function endgroupundo{ return $hm::Macro::FuncProxy("endgroupundo", "st", $args[0]); }
function findspecial{ return $hm::Macro::FuncProxy("findspecial", "st", $args[0]); }
function setstaticvariable{ return $hm::Macro::FuncProxy("setstaticvariable", "st", $args[0]); }
function setregularcache{ return $hm::Macro::FuncProxy("setregularcache", "st", $args[0]); }
function closehidemaru{ return $hm::Macro::FuncProxy("closehidemaru", "st", $args[0]); }
function closehidemaruforced{ return $hm::Macro::FuncProxy("closehidemaruforced", "st", $args[0]); }
function beginclipboardread{ return $hm::Macro::FuncProxy("beginclipboardread", "st", $args[0]); }
function seteventnotify{ return $hm::Macro::FuncProxy("seteventnotify", "st", $args[0]); }

function freedll{ return $hm::Macro::FuncProxy("freedll", "st", $args[0]); }
function setdlldetachfunc{ return $hm::Macro::FuncProxy("setdlldetachfunc", "st", $args[0]); }
function keepdll{ return $hm::Macro::FuncProxy("keepdll", "st", $args[0]); }
function setcomdetachmethod{ return $hm::Macro::FuncProxy("setcomdetachmethod", "st", $args[0]); }
function keepobject{ return $hm::Macro::FuncProxy("keepobject", "st", $args[0]); }
function releaseobject{ return $hm::Macro::FuncProxy("releaseobject", "st", $args[0]); }
function showbrowserpane{ return $hm::Macro::FuncProxy("showbrowserpane", "st", $args[0]); }
function refreshbrowserpane{ return $hm::Macro::FuncProxy("refreshbrowserpane", "st", $args[0]); }
function setbrowserpanesize{ return $hm::Macro::FuncProxy("setbrowserpanesize", "st", $args[0]); }
function setbrowserpaneurl{ return $hm::Macro::FuncProxy("setbrowserpaneurl", "st", $args[0]); }
function setbrowserpanetarget{ return $hm::Macro::FuncProxy("setbrowserpanetarget", "st", $args[0]); }
function setselectionrange{ return $hm::Macro::FuncProxy("setselectionrange", "st", $args[0]); }
function clearkeyhook{ return $hm::Macro::FuncProxy("clearkeyhook", "st", $args[0]); }

function message{ return $hm::Macro::FuncProxy("message", "fn1s2s", $args[0]); }

function insert{ return $hm::Macro::FuncProxy("insert", "st1s", $args[0]); }
function insertfix{ return $hm::Macro::FuncProxy("insertfix", "st1s", $args[0]); }
function searchdialog{ return $hm::Macro::FuncProxy("searchdialog", "st1s", $args[0]); }
function searchdown{ return $hm::Macro::FuncProxy("searchdown", "st1s", $args[0]); }
function searchdown2{ return $hm::Macro::FuncProxy("searchdown2", "st1s", $args[0]); }
function searchup{ return $hm::Macro::FuncProxy("searchup", "st1s", $args[0]); }
function searchup2{ return $hm::Macro::FuncProxy("searchup2", "st1s", $args[0]); }
function question{ return $hm::Macro::FuncProxy("question", "st1s", $args[0]); }
function setclipboard{ return $hm::Macro::FuncProxy("setclipboard", "st1s", $args[0]); }
function addclipboard{ return $hm::Macro::FuncProxy("addclipboard", "st1s", $args[0]); }

function replacedialog{ return $hm::Macro::FuncProxy("replacedialog", "st1s2s", $args[0]); }
function replacedown{ return $hm::Macro::FuncProxy("replacedown", "st1s2s", $args[0]); }
function replaceup{ return $hm::Macro::FuncProxy("replaceup", "st1s2s", $args[0]); }

function getconfig {
    return $hm::Macro::FuncProxy("getconfig", "fss", $args[0]);
}

function getconfig_rnum {
    return $hm::Macro::FuncProxy("getconfig", "fnn", $args[0]);
}

function getresultex($result_id) {

    if ($result_id -eq -1) {
        $ret = $hm::Macro::FunctionStr("getresultex", $result_id); 
        return $ret.Result;
    } else {
        $ret = $hm::Macro::FunctionNum("getresultex", $result_id);
        return $ret.Result;
    }
}

function geteventparam($event_info_ix) {

    if (($event_info_ix -eq 0) -and (event -eq 9)) {
        $ret = $hm::Macro::FunctionStr("geteventparam", $event_info_ix);
        return $ret.Result;
    }
    elseif (($event_info_ix -eq 0) -and (event -eq 10)) {
        $ret = $hm::Macro::FunctionStr("geteventparam", $event_info_ix);
        return $ret.Result;
    }
    else {
        $ret = $hm::Macro::Function("geteventparam", $event_info_ix);
        return $ret.Result;
    }
}

function member_rnum {
    return $hm::Macro::FuncProxy("member", "fnn", $args[0]);
}

function member_rstr {
    return $hm::Macro::FuncProxy("member", "fss", $args[0]);
}


