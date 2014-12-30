PWD=$(pwd)
echo "Running"
$PWD/trace.sh $*
echo "Analyzing"
$PWD/find.sh 2
