minutes=15
zip=12345

echo Starting wttrPi...
sleep 5

while true; do
  clear
  date
  echo
  curl -N -s wttr.in/$zip | head -7
  echo
  echo Weather from wttr.in/$zip
  echo Refreshed every $minutes minutes.
  sleep ${minutes}m
done
