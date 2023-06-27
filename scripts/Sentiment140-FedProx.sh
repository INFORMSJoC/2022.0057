# E=24 \alpha=0
python src/train/server.py -ds sentiment140 -alg fedavg -N 1000 -be 0.1 -C 10 -E 24 --lr_strategy const -lr 0.01 --num_rounds 50000 --model_ori lstm_i25_h16 --glove_model glove.twitter.27B.25d.txt -am modeled_mid -fv 1 -mu 0.01

# E=120 \alpha=0
python src/train/server.py -ds sentiment140 -alg fedavg -N 1000 -be 0.1 -C 10 -E 120 --lr_strategy const -lr 0.01 --num_rounds 50000 --model_ori lstm_i25_h16 --glove_model glove.twitter.27B.25d.txt -am modeled_mid -fv 1  -mu 0.01

# E=120 \alpha=0.25
python src/train/server.py -ds sentiment140 -alg fedavg -N 1000 -be 0.1 -C 10 -E 120 --lr_strategy const -lr 0.01 --num_rounds 50000 --model_ori lstm_i25_h16 --glove_model glove.twitter.27B.25d.txt -am modeled_mid -fv 1 --fv_min 0.25 --fv_max 0.75 -mu 0.01

# E=120 \alpha=0.5
python src/train/server.py -ds sentiment140 -alg fedavg -N 1000 -be 0.1 -C 10 -E 120 --lr_strategy const -lr 0.01 --num_rounds 50000 --model_ori lstm_i25_h16 --glove_model glove.twitter.27B.25d.txt -am modeled_mid -fv 1 --fv_min 0.5 --fv_max 0.5 -mu 0.01

# E=240 \alpha=0
python src/train/server.py -ds sentiment140 -alg fedavg -N 1000 -be 0.1 -C 10 -E 240 --lr_strategy const -lr 0.01 --num_rounds 50000 --model_ori lstm_i25_h16 --glove_model glove.twitter.27B.25d.txt -am modeled_mid -fv 1 -mu 0.01
