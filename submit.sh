runai submit toy-runai \
  -p mhuber \
  -i 10.202.67.201:32581/mhuber:toy_runai \
  -v /nfs/home/mhuber/proj/toy_runai/:/workspace/toy_runai \
  -g 1 \
  --command /workspace/toy_runai/run.sh \
  --working-dir /workspace/toy_runai/ \
  --run-as-user # defaults to root -> logs will be safed as root too
