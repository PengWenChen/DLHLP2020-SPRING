wget https://www.dropbox.com/s/ksv4414z343gf6b/best_att.pth
wget https://www.dropbox.com/s/5i9g36iw8id23nk/best_ppx.pth
part1=`dirname "$1"`
part2=`basename "$1"`
python3 reproduce.py --config ./config/decode_dlhlp.yaml --test --njobs ${NJOBS} --testdir $part1
python3 format.py ./result/decode_dlhlp_test_output.csv $2
