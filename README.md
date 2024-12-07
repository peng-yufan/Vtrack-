Model can be downloaded from [BaiduYun](https://pan.baidu.com/s/1GQKaUCggponnYGPELS-QIA) (password: hrr7)
## Install the environment

```
conda env create -f environment.yml
```

## Data Preparation
Put the tracking datasets in ./data. It should look like:
   ```
   ${ROOT}
    -- data
        -- lasot
            |-- airplane
            |-- basketball
            |-- bear
            ...
        -- got10k
            |-- test
            |-- train
            |-- val
        -- trackingnet
            |-- TRAIN_0
            |-- TRAIN_1
            ...
            |-- TRAIN_11
            |-- TEST
   ```
## Set project paths

Run the following command to set paths for this project

```
python tracking/create_default_local_file.py --workspace_dir . --data_dir ./data --save_dir .
```
After running this command, you can also modify paths by editing these two files
```
lib/train/admin/local.py  # paths about training
lib/test/evaluation/local.py  # paths about testing
```

## Train 

```

python tracking/train.py --script videotrack --config baseline --save_dir . --mode single --script_prv videotrack --config_prv baseline  
python tracking/train.py --script videotrack --config baseline_large --save_dir . --mode single --script_prv videotrack --config_prv baseline_large  

```

## Test 

```
bash test.sh
```


