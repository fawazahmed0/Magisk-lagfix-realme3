#!/system/bin/sh
for i in $(ps -A | grep init | grep subcontext | awk '{print $1}'); do echo -1000 > /proc/$i/oom_score_adj && echo -17 > /proc/$i/oom_adj; done
