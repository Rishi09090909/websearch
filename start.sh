if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rishi09090909/websearch.git /websearch
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /websearch
fi
cd /websearch
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
