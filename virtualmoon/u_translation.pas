unit u_translation;

{$mode objfpc}{$H+}

interface

uses gettext, translations, u_util, u_constant,
  Classes, SysUtils;

function GetDefaultLanguage:string;
function Translate(lang : string = ''; lang2 : string = ''):string;

resourcestring
rstranslator='Translation: P. Chevalley / C. Legrand';
rslanguage='English';
rsformat='0';
rstitle='Virtual Moon Atlas';
rshelp_prefix='UK';
rsdegree = 'd';
rsminute = '''';
rssecond = '"';
rst_1='File';
rst_2='Quit';
rst_3='Configuration';
rst_4='Zoom:';
rst_5='Center';
rst_6='Information';
rst_7='Ephemeris';
rst_8='Zoom+';
rst_9='Zoom-';
rst_10='Find';
rst_11='Next';
rst_14='Outline';
rst_15='Help';
rst_16='About';
rst_17='Now';
rst_18='OK';
rst_19='Latitude';
rst_21='Time Zone';
rst_22='Show the phase';
rst_23='Show the libration';
rst_24='Language';
rst_25='Picture';
rst_26='Geocentric';
rst_28='Color';
rst_29='Label';
rst_30='Close';
rst_31='Zoom';
rst_32='Lighting';
rst_33='Penumbra';
rst_34='Diffuse';
rst_35='Specular';
rst_36='Performance';
rst_37='Smoothness';
rst_42='All the formation';
rst_43='Pretty interesting';
rst_44='Very interesting';
rst_45='Exceptional';
rst_46='Sort';
rst_47='Name';
rst_48='Interest';
rst_49='Instrument';
rst_51='Terminator';
rst_52='Mark';
rst_53='Show label';
rst_54='Show mark';
rst_55='Setup';
rst_56='Sky Chart';
rst_57='General';
rst_58='Images';
rst_60='Image folders:';
rst_62='Folder';
rst_63='Tools';
rst_64='Rotation';
rst_65='West';
rst_66='East';
rst_67='Default Orientation';
rst_68='Celestial Pole on top';
rst_69='Distance';
rst_70='Real Distance';
rst_71='Apparent Distance';
rst_72='North';
rst_73='South';
rst_74='Mirror';
rst_75='Save Map';
rst_76='Saved Map size';
rst_77='As on screen';
rst_78='Save As';
rst_79='Print';
rst_80='White background';
rst_81='Neighbor';
rst_82='Print Setup...';
rst_84='Select All';
rst_85='Copy';
rst_86='Measure';
rst_89='External display software';
rst_90='Printing';
rst_91='Printer';
rst_92='Left Margin';
rst_93='Millimeters';
rst_94='Print the ephemeris';
rst_95='Print the information';
rst_96='Print the map';
rst_97='Information text width';
rst_98='Glossary';
rst_99='Cancel';
rst_100='Observatory';
rst_101='Display';
rst_102='Mark the point of maximum libration';
rst_103='Identification';
rst_104='Label density';
rst_109='Eyepieces';
rst_110='Telescope focal length';
rst_111='Eyepiece focal length';
rst_112='Eyepiece apparent field of vision';
rst_113='Compute';
rst_114='Update';
rst_115='Notes';
rst_116='Centre';
rst_117='none';
rst_118='Eyepiece Name';
rst_119='Field in minutes';
rst_120='Center label on the formation';
rst_121='Short Label';
rst_124='Power';
rst_125='Options valid at next startup';
rst_129='Database';
rst_130='Far Side';
rst_134='Full Globe';
rst_135='Orbit the Moon';
rst_136='Stop';
rst_137='Direction';
rst_138='d/second';
rst_139='Rotation speed';
rst_140='West View';
rst_142='East View';
rst_144='Select Texture';
rst_145='OpenGL Info';
rst_146='Positive East';
rst_147='N';
rst_148='S';
rst_149='E';
rst_150='W';
rst_152='Texture';
rst_153='L';
rst_154='B';
rst_155='mm.';
rst_156='Track position';
rst_157='Correct the Moon motion';
rst_158='every';
rst_159='seconds';
rst_160='Telescope';
rst_161='Show Menu';
rst_162='Goto selected';
rst_163='Sync selected';
rst_165='Encyclopedia';
rst_166='2nd Window';
rst_167='Snapshot';
rst_169='Overlay';
rst_170='Show overlay';
rst_171='Overlay :';
rst_172='Transparency:';
rst_173='Date / Time';
rst_174='Use Computer Date and Time';
rst_175='Show Libration';
rst_176='Show Phase';
rst_177='Rotate N-S';
rst_178='Flip E-W';
rst_179='User Database loaded from DATLUN';
rst_180='Remove Selection Mark';
rst_181='Mark size';
rst_182='Force texture compression';
rst_183='Label Color';
rst_184='Your graphic card do not support to display more than one texture for the same object. Be sure that hardware acceleration is activated or change the graphic card. The require function is GL_ARB_MULTITEXTURE ';
rst_185='Look here for a list of supported graphic card';
rsm_1='from';
rsm_2='born in';
rsm_3='Born at:';
rsm_4='in';
rsm_5='Dead at:';
rsm_6='Name Author:';
rsm_7='Name by Langrenus:';
rsm_8='Name by Hevelius:';
rsm_9='Name by Riccioli:';
rsm_10='Longitude:';
rsm_11='Latitude:';
rsm_12='Quadrant:';
rsm_13='Area:';
rsm_14='Rukl map:';
rsm_15='Viscardy page: ';
rsm_16='Hatfield map:';
rsm_17='Dimension:';
rsm_18='Km';
rsm_19='Mi';
rsm_20='Height:';
rsm_21='m';
rsm_22='ft';
rsm_23='Height/Wide ratio:';
rsm_24='Interest :';
rsm_25='Observation period:';
rsm_26='or';
rsm_27='No formation actually near the terminator';
rsm_28='Minimal Instrument:';
rsm_29='Right Ascension:';
rsm_30='Declination:';
rsm_31='Distance:';
rsm_32='Phase:';
rsm_33='Libration in Latitude:';
rsm_34='Libration in Longitude:';
rsm_35='Illumination:';
rsm_36='Apparent diameter:';
rsm_37='Position angle:';
rsm_38='Rise:';
rsm_39='Transit:';
rsm_40='Set:';
rsm_41='Rise azimuth:';
rsm_42='Set azimuth:';
rsm_43='Field:';
rsm_44='Refresh rate';
rsm_45='Sub-solar latitude:';
rsm_46='Lunation:';
rsm_47='days';
rsm_48='Colongitude:';
rsm_49='Geological period:';
rsm_50='Time';
rsm_51='Date';
rsm_52='Measure the distance';
rsm_53='Standard cursor mode';
rsm_54='Image list';
rsm_55='Transit Altitude:';
rsm_56='Type:';
rsm_57='Size:';
rsm_58='Description:';
rsm_59='Observation:';
rsm_60='Position:';
rsm_61='Atlas:';
rsm_62='Name Origine:';
rsm_63='Detailed Name:';
rsm_64='Important Facts:';
rsm_65='Lunar Orbiter:';
rsm_66='Westfall Atlas:';
rsm_67='Warning! The personal notes have changed. Do you want to save the change?';
rsm_72='Charles Wood article:';
rsm_73='Azimuth';
rsm_74='Altitude';
rsm_75='From Database:';
rsShowLabels = 'Show labels';
rsShowGrid = 'Show grid';
rsGrid = 'Grid';
rsOrbitAltitud = 'Orbit altitude';
rsOrbitInclina = 'Orbit inclination';
rsLevel = 'Level:';
rsZoomLevel = 'Zoom level';
rsFullScreen = 'Full screen (Esc)';
rsQuitfull = 'Quit full screen (Esc)';
rsLabelsFont = 'Labels font';
rsAirburshReli = 'Airbursh relief with albedo';
rsAirburshReli2 = 'Airbursh relief without albedo';
rsClementinePh = 'Clementine photographic';
rsLOPAMPhotogr = 'LOPAM photographic';
rsEphemeris = 'Ephemeris:';
rsCountry = 'Country';
rsPhaseWithDyn = 'Phase with dynamic relief';
rsPhaseWithout = 'Phase without relief';
rsStandardText = '(standard texture selection)';
rsSimple = 'Simple';
rsAdvanced = 'Advanced';
rsDynamicRelie = 'Dynamic relief display method';
rsFirstUseSett = 'First use setting';
rsTopocentric = 'Topocentric';
rsShowScale = 'Show scale';
rsDefault = 'Default';
rsYourInstalla = 'Your installation is already complete with all the features '
  +'installed.';
rsYouCanDownlo =
  'You can download and install the following optional features:';
rsDownload = 'Download';
rsCheckForOpti = 'Check for optional features';
rsPictureLibra = 'Picture Library Apollo Missions';
rsPictureLibra2 = 'Picture Library Apollo Mapping Camera';
rsPictureLibra3 = 'Picture Library Best Of Amateurs';
rsPictureLibraPic = 'Picture Library Best of the Pic du Midi Observatory';
rsPictureLibra4 = 'Picture Library Clementine Probe';
rsPictureLibra5 = 'Picture Library Kaguya Probe';
rsPictureLibra6 = 'Picture Library Consolidated Lunar Atlas';
rsPictureLibra7 = 'Picture Library Lunar Astronautical Charts & Lunar Maps';
rsPictureLibra8 = 'Picture Library Lunar Orbiter Photographic Atlas Of The '
  +'Moon ';
rsPictureLibra9 = 'Picture Library Probes Luna, Ranger, Lunar Orbiter and '
  +'Surveyor';
rsTexturesAirb = 'Textures Airbursh relief without albedo';
rsTexturesClem = 'Textures Clementine photographic High Resolution';
rsTexturesLOPA = 'Textures LOPAM photographic High Resolution';
rsTexturesPhas = 'Textures Phase with dynamic relief using LRO/WAC data';
rsTexturesChange = 'Textures Change photographic High Resolution';
rsTexturesWAC = 'Textures LRO/WAC photographic High Resolution';
rsDownloadURL='http://ap-i.net/avl/en/download';
rsCaption = 'Caption';
rsDecreaseFont = 'Decrease font size';
rsIncreaseFont = 'Increase font size';
rsSide = 'Side:';
rsSaveEphemeri = 'Save ephemeris to file';
rsStartDate = 'Start date';
rsEndDate = 'End date';
rsSteps = 'Steps';
rsHours = 'Hours';
rsUnnamedForma = 'Unnamed Formation';
rsCCDField = 'CCD field';
rsCCDName = 'CCD name';
rsWidth = 'Width';
rsHeight = 'Height';
rsPixelSize = 'Pixel size';
rsPixelCount = 'Pixel count';
rsHistorical = 'Historical';
rsNoTextureToU = 'No texture (to use with an overlay alone)';
rsLocalZenithO = 'Local zenith on top';
rsShowInformat = 'Show information and tools';
rsHideInformat = 'Hide information and tools';
rsNamedFormati = 'Named formations';
rsSatellitesFo = 'Satellites formations';
rsRegistredFor = 'Registred formations';
rsSource = 'Source:';

implementation

function GetDefaultLanguage:string;
var buf1,buf2: string;
begin
 GetLanguageIDs(buf1,buf2);
 if buf2<>'' then result:=buf2
    else result:=buf1;
end;

function Translate(lang : string = ''; lang2 : string = ''):string;
var pofile: string;
begin
 if lang='' then lang:=GetDefaultLanguage;
 // translate LCL messages
 TranslateUnitResourceStrings('LCLStrConsts',slash(appdir)+slash('language')+'lclstrconsts.%s.po',lang,lang2);
 // translate messages
 pofile:=format(slash(appdir)+slash('language')+'maplun.%s.po',[lang]);
 if FileExists(pofile) then result:=lang
                       else result:=lang2;
 TranslateUnitResourceStrings('u_translation',slash(appdir)+slash('language')+'maplun.%s.po',lang,lang2);
end;

end.

