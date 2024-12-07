# Vtrack-B

#UAV123
python tracking/test.py videotrack baseline-test-4.5-100-200-sigmoid3.0-10-3-5-2 --dataset uav --threads 32
python tracking/analysis_results.py videotrack  baseline-test-4.5-100-200-sigmoid3.0-10-3-5-2 uav

#LaSOT
python tracking/test.py videotrack baseline-240-700-sigmoid3.0 --dataset lasot --threads 32
python tracking/analysis_results.py videotrack  baseline-240-700-sigmoid3.0 lasot

#GOT10K
python tracking/test.py videotrack baseline-test-4.5-20-200-sigmoid3.0-10-3-5-2 --dataset got10k_test --threads 32
python lib/test/utils/transform_got10k.py --tracker_name videotrack --cfg_name baseline-test-4.5-20-200-sigmoid3.0-10-3-5-2

#TrackingNet
python tracking/test.py videotrack baseline-test-4.0-20-200-sigmoid3.0-10-3-5-2 --dataset trackingnet --threads 32
python lib/test/utils/transform_trackingnet.py --tracker_name videotrack --cfg_name baseline-test-4.0-20-200-sigmoid3.0-10-3-5-2

# Vtrack-L

#UAV123
python tracking/test.py videotrack baseline_large-test-4.7-60-200-sigmoid1.8-10-3-5-2 --dataset uav --threads 32
python tracking/analysis_results.py videotrack  baseline_large-test-4.7-60-200-sigmoid1.8-10-3-5-2 uav

#LaSOT
python tracking/test.py videotrack baseline_large-test-4.9-150-700-sigmoid1.5 --dataset lasot --threads 32
python tracking/analysis_results.py videotrack  baseline_large-test-4.9-150-700-sigmoid1.5 lasot

#GOT10K
python tracking/test.py videotrack baseline_large-test-4.3-20-200-sigmoid1.8-10-3-5-2 --dataset got10k_test --threads 32
python lib/test/utils/transform_got10k.py --tracker_name videotrack --cfg_name baseline_large-test-4.3-20-200-sigmoid1.8-10-3-5-2

#TrackingNet
python tracking/test.py videotrack baseline_large-test-4.0-20-200-sigmoid1.8-10-3-5-2 --dataset trackingnet --threads 32
python lib/test/utils/transform_trackingnet.py --tracker_name videotrack --cfg_name baseline_large-test-4.0-20-200-sigmoid1.8-10-3-5-2
