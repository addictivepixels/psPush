# FILE: Basic modal popup for Atera with website pushing.
# FROM: anthony@addictive.systems
# DATE: 01/31/2022
# VERSION: 2.0.0.0


###############################################################
# -- READ ME -- READ ME -- READ ME -- READ ME -- READ ME --
#
# Atera does not allow scripts to be shared with variables,
# so you'll need to add those yourself above - very easy! :)
#
# 1) Create these variables above in Atera:
#      Popup_Tile
#      Message_Text
#      Website
#
# 2) In the ATERA VARIABLE CONFIG area BELOW, remove the QQQ's from each line.

###### ATERA VARIABLE CONFIG #####


$title = "{QQQ[Popup_Title]}"
$message = "{QQQ[Message_Text]}"
$website = "{QQQ[Website]}"


# 3) That's it!
#
# IMPORTANT: Website pushing requires https:// or http://
#
# Since Atera requires the variable to be set, as long as you
# enter five or less characters, no site will be pushed.
###############################################################

###############################################################
# Init
###############################################################
Add-Type -AssemblyName Microsoft.VisualBasic
$date = Get-Date



###############################################################
# Change the style stuff to better suite your needs if needed.
###############################################################

$style = [Microsoft.VisualBasic.MsgBoxStyle]"Information,OkOnly,SystemModal"



if ($website.length -gt 6) {
     Start-Process $website
     $echoback = "Webpage pushed and message received: "
     write-host $echoback $date
     start-process $website
     [Microsoft.VisualBasic.Interaction]::MsgBox($message, $style, $title)

}
else {
     $echoback = "No webpage pushed -- Message received: "
     write-host $echoback $date
     [Microsoft.VisualBasic.Interaction]::MsgBox($message, $style, $title)
}
