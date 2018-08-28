echo "Step 1/3: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Step 2/3: Downloading Homebrew casks"
brew tap homebrew-bundle
brew bundle

echo "Step 3/3: Creating .bash_profile"

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
