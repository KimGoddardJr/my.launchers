
# $BASE="$HOME\devel\MyWorkEnv"
# if using anaconda. Copy ecosystem to C:\tools\Anaconda3\envs\vfxpipeline\Lib\site-packages
# $env:ECO_ENV="$HOME\devel\MyWorkEnv\ecosystem-env"
$env:ECO_ENV="$HOME\devel\MyWorkEnv\ecosystem-env"
$env:PYTHONPATH="$HOME\devel\MyWorkEnv\ecosystem"

# echo $args[0]

# If ($args[0] -eq "2019") {
#     $Env:TOOLS="base,maya2019"
# }
# elseif ($args[0] -eq "2020"){
#     $Env:TOOLS="base,maya2020"
# }
# elseif ($args[0] -eq "2022"){
#     $Env:TOOLS="base,maya2022"
# }

$ARGLIST = $args[0].Split(" ")

$env:TOOLS = $ARGLIST[0] + "," + $ARGLIST[1]


pythonw $Env:PYTHONPATH\main.py -t $env:TOOLS -r "C:\Program Files\Bridge\Bridge.exe" 
#-s > "C:\Users\Public\tmp\ecosystem.env"

# set "C:\Users\Public\tmp\ecosystem.env"

# maya.exe
