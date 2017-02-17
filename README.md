ID3.au3 UDF Description:

Reads ID3v1.0, ID3v1.1, ID3v1.1+, ID3v2.2, ID3v2.3, ID3v2.4, APEv2 and MPEG frame header
Writes ID3v1.1, ID3v2.3, ID3v2.4
Latest Version v3.4 20120610
AutoIt Version Required: 23rd December, 2011 - v3.3.8.0 of AutoIt
ID3 functions only works with .mp3 files

Notes:
More info on the ID3 format can be found at http://www.id3.org/Developer_Information and http://en.wikipedia.org/wiki/ID3
More info on the APE tag format can be found at http://wiki.hydrogenaudio.org/index.php?title=APEv2_specification
If you only care about getting the basic info ie. Album, Artist, Track and Song Title then look into using Udf: Get Extended FIle Properties
More ID3 implementations http://www.id3.org/Implementations

Changes in latest version (see files for all changes):
ID3.au3 (06/10/2012) [ID3_v3.4.1.au3]
  Added resetting of all global ID3 variables in _ID3ReadTag() to make sure they are set back to the default values
  changed _ID3WriteTag() to determine what tags have been read and to only write back those version if $iTagVersion=-1
  edited _ID3WriteTag() comments
  added $iReturnTypeFlag to _ID3GetTagField() inputs for ID3v2 functions
  fixed _ID3GetTagField() so that @extended is set to the Number of frames that exist with same $sFrameIDRequest
  fixed _h_ID3v2_EncodeStringToBinary() variable typo ($FrameData should be $bFrameData), thanks BrewManNH!

ID3_Example_GUI.au3 (06/10/2012) [ID3_Example_GUI_v3.4.1.au3]
  changed all _ID3v1Field_GetString and _ID3v2Field_GetString to _ID3GetTagField

ID3_SimpleExamples.au3 (06/10/2012) [ID3_SimpleExamples_v3.4.au3]
  I have realized that the GUI example has become overly complex, so I have added this file to help show how I intended ID3.au3   to be used.
  
Latest versions of the specification
  ID3v2.3TagSpec.pdf
  ID3v2.4TagSpec.pdf
