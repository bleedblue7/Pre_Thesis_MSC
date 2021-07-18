if [ $# -ne 2 ]; then
    cat <<EOF
usage: $0 <directory path> <model folder name> 
EOF
    exit
fi

pth=$1
tName=$2

mkdir $pth/models/2ndex_$tName/build

cd $pth/models/2ndex_$tName/

rc -d domain_description_2ndex_$tName.pddl -p problem_description_noS2ndex_$tName.pddl -O -MV -W -n 50000 -v2 -C"-DUSE_LOG_PROBS" -w build/

./problem_description_noS2ndex_$tName-validator -v 0.8 -h 1 ../../plans/plan_$tName.txt >val_$tName-std.out.txt 2>val_$tName-std.err.txt

cd ../../../