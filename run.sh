#!/usr/bin/env bash

case "$1" in
        dev)
            docker run -it --rm -p 8000:8000 -v $(pwd):/app delima bash
            ;;
         
        build-dev)
            docker build -t delima .
            ;;
         
        status)
            status anacron
            ;;
        restart)
            stop
            start
            ;;
        *)
            echo $"Usage: $0 {start|stop|restart|condrestart|status}"
            exit 1
 
esac
