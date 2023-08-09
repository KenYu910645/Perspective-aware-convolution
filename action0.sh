################
### Training ###
################
./launchers/train.sh config/pac_new/baseline.py 0 baseline
./launchers/train.sh config/pac_new/pac_layer1.py 0 pac_layer1
./launchers/train.sh config/pac_new/pac_module.py 0 pac_module

##################
### Evaluation ###
##################
# python ./scripts/test.py --cfg_path="config/pac_new/pac_module.py" \
#                          --gpu=0 \
#                          --checkpoint_path="exp_output/pac_new/pac_module/checkpoint/Yolo3D_latest.pth" \
#                          --split_to_test="test" \

# ./launchers/det_precompute.sh config/baseline.py train
# ./launchers/eval.sh config/baseline.py 0 /home/lab530/KenYu/visualDet3D/exp_output/baseline_gac_original/Mono3D/checkpoint/GroundAwareYolo3D_latest.pth validation

# ./launchers/det_precompute.sh config/loss/noam_combine_regress.py train
# ./launchers/eval.sh config/loss/noam_combine_regress.py 1 /home/lab530/KenYu/visualDet3D/exp_output/loss/Mono3D/checkpoint/GroundAwareYolo3D_latest.pth validation

# ./launchers/det_precompute.sh config/loss/noam.py train
# ./launchers/train.sh config/loss/noam.py 0 noam

# ./launchers/det_precompute.sh config/best/fpn_kmeans18_large_only.py train
# ./launchers/train.sh config/best/fpn_kmeans18_large_only.py 1 fpn_kmeans18_large_only

#####################
### Visualization ###
#####################

#################
### Inference ###
#################


# Evaluation on testing set( a single image)
# ./launchers/det_precompute.sh config/mixup/kitti_mixup_1.py test
# ./launchers/eval.sh config/mixup/kitti_mixup_1.py 0 /home/lab530/KenYu/visualDet3D/exp_output/mixup/kitti_mixup_1/Mono3D/checkpoint/GroundAwareYolo3D_latest.pth test
# python ../ml_toolkit/3d_object_detection_visualization/viz3Dbox.py

# Test one 
# ./launchers/det_precompute.sh config/anchor_gen.py test
# ./launchers/eval.sh config/anchor_gen.py 0 /home/lab530/KenYu/visualDet3D/exp_output/anchor_gen/Mono3D/checkpoint/BevAnkYolo3D_latest.pth test
# python ../ml_toolkit/3d_object_detection_visualization/viz3Dbox.py



# test split, for inference.
# python3 scripts/imdb_precompute_test.py --cfg_path=$CONFIG_PATH



# ./launchers/det_precompute.sh config/das/das_kmeans_anchor_32.py train
# ./launchers/train.sh config/das/das_kmeans_anchor_32.py 1 das_kmeans_anchor_32

# ./launchers/det_precompute.sh config/baseline.py train
# ./launchers/train.sh config/baseline.py 1 baseline

# ./launchers/det_precompute.sh config/data_augumentation/add_noise.py train
# ./launchers/train.sh config/data_augumentation/add_noise.py 1 add_noise

# EXP_NAME=('baseline')

# for exp_name in "${EXP_NAME[@]}"
# do
#     ./launchers/det_precompute.sh config/iou/"$exp_name".py train
#     ./launchers/train.sh config/iou/"$exp_name".py 1 "$exp_name"
# done

# ./launchers/det_precompute.sh config/best/das_test.py train
# ./launchers/train.sh config/best/das_test.py 0 das_tests


# EXP_NAME=('kitti_box_solid_05_obj_2_zJitter')

# for exp_name in "${EXP_NAME[@]}"
# do
#     ./launchers/det_precompute.sh config/scene_aware/"$exp_name".py train
#     ./launchers/train.sh config/scene_aware/"$exp_name".py 1 "$exp_name"
# done

# EXP_NAME=('pac_module')

# for exp_name in "${EXP_NAME[@]}"
# do
#     ./launchers/det_precompute.sh config/pac_new/"$exp_name".py train
#     ./launchers/train.sh config/pac_new/"$exp_name".py 1 "$exp_name"
# done

# EXP_NAME=('baseline_inconsist_check' 'erase_back_ground_inconsist_check')

# for exp_name in "${EXP_NAME[@]}"
# do
#     ./launchers/det_precompute.sh config/data_augumentation/"$exp_name".py train
#     ./launchers/train.sh config/data_augumentation/"$exp_name".py 1 "$exp_name"
# done

# EXP_NAME=('add_random_zoom_only_in')

# for exp_name in "${EXP_NAME[@]}"
# do
#     ./launchers/det_precompute.sh config/data_augumentation/"$exp_name".py train
#     ./launchers/train.sh config/data_augumentation/"$exp_name".py 1 "$exp_name"
# done

# ./launchers/det_precompute.sh config/best/pac_3d_offset_xy_0.6.py train
# ./launchers/train.sh config/best/pac_3d_offset_xy_0.6.py 1 pac_3d_offset_xy_0.6

# ./launchers/det_precompute.sh config/best/pac_3d_offset_xyz.py train
# ./launchers/train.sh config/best/pac_3d_offset_xyz.py 1 pac_3d_offset_xyz

# ./launchers/det_precompute.sh config/best/pac_3d_offset_xy.py train
# ./launchers/train.sh config/best/pac_3d_offset_xy.py 1 pac_3d_offset_xy

# ./launchers/det_precompute.sh config/best/pac_3d_offset_yz.py train
# ./launchers/train.sh config/best/pac_3d_offset_yz.py 1 pac_3d_offset_yz

# ./launchers/det_precompute.sh config/best/with_pose_potimization.py train
# ./launchers/train.sh config/best/with_pose_potimization.py 1 with_pose_potimization

# ./launchers/det_precompute.sh config/best/dcnv2_layer1.py train
# ./launchers/train.sh config/best/dcnv2_layer1.py 1 dcnv2_layer1

# ./launchers/det_precompute.sh config/best/dcnv2_layer3.py train
# ./launchers/train.sh config/best/dcnv2_layer3.py 1 dcnv2_layer3

# ./launchers/det_precompute.sh config/best/pac_3d_offset.py train
# ./launchers/train.sh config/best/pac_3d_offset.py 1 pac_3d_offset

# ./launchers/det_precompute.sh config/best/pac.py train
# ./launchers/train.sh config/best/pac.py 1 pac

# ./launchers/det_precompute.sh config/attention/bam_in_resnet.py train
# ./launchers/train.sh config/attention/bam_in_resnet.py 1 bam_in_resnet


# ./launchers/det_precompute.sh config/detector_test/seperate_2d_cz_appearce_256.py train
# ./launchers/train.sh config/detector_test/seperate_2d_cz_appearce_256.py 1 seperate_2d_cz_appearce_256

# ./launchers/det_precompute.sh config/detector_test/seperate_2d_cz_appearce_512.py train
# ./launchers/train.sh config/detector_test/seperate_2d_cz_appearce_512.py 1 seperate_2d_cz_appearce_512

# ./launchers/det_precompute.sh config/fpn_3d/fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head_reg1024_cls512.py train
# ./launchers/train.sh config/fpn_3d/fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head_reg1024_cls512.py 1 fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head_reg1024_cls512

# ./launchers/det_precompute.sh config/attention/bam.py train
# ./launchers/train.sh config/attention/bam.py 1 bam

# ./launchers/det_precompute.sh config/fpn_3d/fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head.py train
# ./launchers/train.sh config/fpn_3d/fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head.py 1 fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head

# EXP_NAME=('anchor_gen_all_3Ddistance_bevAnchor_batch8' 'anchor_gen_all_L1distance_bevAnchor_batch1' 'anchor_gen_all_L1distance_bevAnchor_batch8' 'anchor_gen_all_maxIoU_gacAnchor_batch1' 'anchor_gen_all_maxIoU_gacAnchor_batch8')

# EXP_NAME=('fpn_pixelwise_pyrimid_anchor9_even_scale_seperate_head_reg1024_cls512_neck_1024_seperate_2d')

# for exp_name in "${EXP_NAME[@]}"
# do
#     # ./launchers/det_precompute.sh config/fpn_3d/"$exp_name".py train
#     ./launchers/train.sh config/fpn_3d/"$exp_name".py 1 "$exp_name"
# done

# ./launchers/det_precompute.sh config/anchor_gen/anchor_gen_dense_all.py train
# ./launchers/train.sh config/anchor_gen/anchor_gen_dense_all.py 1 anchor_gen_dense_all

#########################
### Anchor generation ###
#########################

# Train for anchor gen experiment
# ./launchers/det_precompute.sh config/gac_original.py train
# ./launchers/train.sh config/gac_original.py 1 gac_original

# Evaluation on validation set
# ./launchers/det_precompute.sh config/anchor_gen.py train # test
# ./launchers/eval.sh config/anchor_gen.py 0 /home/lab530/KenYu/visualDet3D/exp_output/anchor_gen/Mono3D/checkpoint/BevAnkYolo3D_latest.pth validation
# python ../ml_toolkit/3d_object_detection_visualization/viz3Dbox.py

# ./launchers/det_precompute.sh config/anchor_gen.py train # test
# PTH_NAME=('BevAnkYolo3D_49.pth' 'BevAnkYolo3D_99.pth' 'BevAnkYolo3D_149.pth' 'BevAnkYolo3D_199.pth' 'BevAnkYolo3D_249.pth' 'BevAnkYolo3D_299.pth' 'BevAnkYolo3D_349.pth' 'BevAnkYolo3D_399.pth' 'BevAnkYolo3D_449.pth')
# for pth_name in "${PTH_NAME[@]}"
# do
#     ./launchers/eval.sh config/anchor_gen.py 1 /home/lab530/KenYu/visualDet3D/exp_output/anchor_gen/Mono3D/checkpoint/"$pth_name" validation > exp_output/anchor_gen/eval_val_result_"$pth_name".txt
# done



