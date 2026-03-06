function killport --description "Kill process running on a given port"
    if test (count $argv) -eq 0
        echo "Usage: killport <port>"
        return 1
    end
    set -l pids (lsof -ti tcp:$argv[1])
    if test -z "$pids"
        echo "No process found on port $argv[1]"
        return 1
    end
    echo $pids | xargs kill -9
    echo "Killed process(es) on port $argv[1]"
end
