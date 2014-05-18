CONKYRC="$1"

mv $CONKYRC old_$CONKYRC
./tool/update.rb settings/*.conf TEXT/main.conf > $CONKYRC

killall conky
nohup conky -c $CONKYRC &
