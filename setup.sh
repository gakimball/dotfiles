echo "Step 1/4: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Step 2/4: Downloading Homebrew libraries"
brew tap homebrew-bundle
brew bundle

echo "Step 3/4: Creating .bash_profile"

bash_profile=~/.bash_profile

if [ -f $bash_profile ]; then
   echo "Moving your current .bash_profile to .bash_profile_old"
   mv $bash_profile ~/.bash_profile_old
fi

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
files=('alias' 'env' 'input' 'prompt')

touch $bash_profile

for file in "${files[@]}"
do
  echo "source ${parent_path}/bash/${file}" >> $bash_profile
done

echo "Step 4/4: Creating .gitconfig"

if [ -f ~/.gitconfig ]; then
   echo "Moving your current .gitconfig to .gitconfig_old"
   mv ~/.gitconfig ~/.gitconfig_old
fi

ln -sv "${parent_path}/.gitconfig" ~
