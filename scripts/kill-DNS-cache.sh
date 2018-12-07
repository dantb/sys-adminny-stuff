for run in {1..100}; do sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; done
