runai submit toy-runai \
  -p mhuber \
  -i python \
  -v /nfs/home/mhuber/proj/toy_runai/:/workspace/toy_runai \
  --command /workspace/toy_runai/run_rm.sh \
  --working-dir /workspace/toy_runai/ 
