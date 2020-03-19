wget https://www.dropbox.com/s/ksv4414z343gf6b/best_att.pth?dl=0
wget https://www.dropbox.com/s/5i9g36iw8id23nk/best_ppx.pth?dl=0
python3 reproduce.py --config ./config/decode_dlhlp.yaml --test --njobs 6 --testdir $1
python3 format.py ./result/decode_dlhlp_test_output.csv $2