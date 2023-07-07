# E=50 D=1
python src/train/server.py -ds mnist -alg fedavg -N 1000 -be 0.1 -C 1 -E 50 --alpha 0.1 --num_rounds 10000 --lr_strategy const --init_lr 0.01 -nm 0.0 -ns 1.0 -stg number

# E=100 D=1
python src/train/server.py -ds mnist -alg fedavg -N 1000 -be 0.1 -C 1 -E 100 --alpha 0.1 --num_rounds 10000 --lr_strategy const --init_lr 0.01 -nm 0.0 -ns 1.0 -stg number

# E=100 D=3
python src/train/server.py -ds mnist -alg fedavg -N 1000 -be 0.1 -C 1 -E 100 --alpha 0.3 --num_rounds 10000 --lr_strategy const --init_lr 0.01 -nm 0.0 -ns 1.0 -stg number

# E=100 D=5
python src/train/server.py -ds mnist -alg fedavg -N 1000 -be 0.1 -C 1 -E 100 --alpha 0.5 --num_rounds 10000 --lr_strategy const --init_lr 0.01 -nm 0.0 -ns 1.0 -stg number

# E=200 D=1
python src/train/server.py -ds mnist -alg fedavg -N 1000 -be 0.1 -C 1 -E 200 --alpha 0.1 --num_rounds 10000 --lr_strategy const --init_lr 0.01 -nm 0.0 -ns 1.0 -stg number
