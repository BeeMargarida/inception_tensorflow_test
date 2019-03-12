python3 retrain.py \
--bottleneck_dir=./tf_files/bottleneck \
--how_many_training_steps 500 \
--model_dir=./tf_files/inception \
--output_graph=./model/retrained_graph.pb \
--output_labels=./model/retrained_labels.txt \
--image_dir ./images

python3 label_image.py \
--graph=model/retrained_graph.pb \
--labels=model/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--image=testing_photo/1.jpg