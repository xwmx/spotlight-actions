set current_path to (path to me)
do shell script "." & quote & POSIX path of current_path & quote & "Contents/Resources/Scripts/script.sh"
