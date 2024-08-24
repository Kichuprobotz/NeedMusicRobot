if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone Kichuprobotz/NeedMusicRobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NeedMusicRobot
fi
cd /NeedMusicRobot
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
