#!/usr/bin/env bash

# build
embed_path=../data2.2_more/
embed_path1=$embed_path/wiki.jv.vec
data_path=../data2.2_more/
data0=$data_path/jv_train.conllu
data1=$data_path/jv_dev.conllu
data2=$data_path/jv_test.conllu
#data3=$data_path/id_train.conllu
#data4=$data_path/id_dev.conllu
#data5=$data_path/id_test.conllu

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python3 ../src/examples/vocab/build_joint_vocab_embed.py \
--embed_paths $embed_path1 \
--embed_lang_ids jv \
--data_paths $data0 $data1 $data2 \
--model_path ./model/
