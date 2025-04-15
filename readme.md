# OMGrab - Video Annotation Toolkit

This project provides tools and notebooks for annotating video streams with various types of information, including text overlays, 3D point clouds derived from depth estimation, and hand pose tracking.

## Features

*   **Depth Estimation & Point Cloud Generation:** Utilizes the [Apple ML Depth Pro](https://github.com/apple/ml-depth-pro) model to estimate depth from single images or video frames and generate corresponding 3D point clouds. See `point_cloud.ipynb` for examples of image-to-point-cloud, video-to-point-cloud generation, and creating videos from point cloud sequences.
*   **Hand Pose Estimation:** Leverages Google's [MediaPipe](https://developers.google.com/mediapipe) library for real-time hand tracking and pose estimation within video frames.
*   **Text Annotation:** Use open source image to text models to annotate video frames in a K-shot learning fashion.
*   **Stereo Calibration:** Includes tools for calibrating stereo camera setups and extracting intrinsic and extrinsic parameters.

## Project Structure

*   `point_cloud.ipynb`: Jupyter notebook demonstrating depth estimation from images/videos and conversion to `.ply` point cloud files using the `ml-depth-pro` model. It also includes code for generating videos from these point clouds with various camera view configurations.
*   `multimodal_annotation.ipynb`: Jupyter notebook for annotating video frames with text, point clouds, and hand poses.
*   `ml-depth-pro/`: Directory containing the cloned `ml-depth-pro` repository or related code/models.
*   `generated_pointclouds/`: Default output directory for generated point cloud files (`.ply`) and videos.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone git@github.com:OMGrab/Multimodal-video-annotation.git
    cd OMGrab
    ```
2.  **Set up the environment:** Ensure you have Python and necessary dependencies installed. A virtual environment (like conda or venv) is highly recommended.
    *   Install the required packages:
        ```bash
        pip install -r requirements.txt
        ```
    *   The `point_cloud.ipynb` notebook contains cells to clone `ml-depth-pro`, install it (`pip install -e .`), and download the required model checkpoint.
3.  **Download Models:** The `point_cloud.ipynb` notebook includes steps (`bash get_pretrained_models.sh`) to download the pre-trained `depth_pro.pt` model into `ml-depth-pro/checkpoints/`. Ensure this is done before running inference. Verify the file path used in the notebooks matches the actual download location.
4.  **Run the Notebooks:** Explore the functionalities by running the Jupyter notebooks (`point_cloud.ipynb`, `stereo_calibrate.ipynb`, `video.ipynb`). Adjust file paths for inputs (images, videos, point clouds) and outputs as needed.

## Usage Examples

*   **Generate Point Clouds:** Open and run the cells in `point_cloud.ipynb` to process images or videos and generate `.ply` files in the specified output directories (e.g., `generated_pointclouds/`).
*   **Create Point Cloud Videos:** Utilize the later cells in `point_cloud.ipynb` to render videos from sequences of `.ply` files, experimenting with different camera views and resolutions.
*   **Hand Tracking:** Perform hand pose estimation on a video source using the `multimodal_annotation.ipynb` notebook.
*   **Video Annotation:** Combine outputs or use functionalities to overlay text, point clouds, or hand poses onto a video using the `multimodal_annotation.ipynb` notebook.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.
