import React from 'react';
import ImageRotateButton from './ImageRotateButton.jsx';

class ImageModal extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imageList: props.imageList,
      imageIdx: props.imageIdx,
    };
    this.handleRotateImage = this.handleRotateImage.bind(this);
  }

  handleRotateImage(direction) {
    const { imageIdx } = this.state;
    console.log(typeof imageIdx)
    this.setState({
      imageIdx: imageIdx + direction,
    });
  }

  render() {
    const { onCloseRequest } = this.props;
    const { imageList, imageIdx } = this.state;
    const image = imageList[imageIdx];
    const displayButton = imageList.length < 1;
    const disablePrevButton = imageIdx === 0;
    const disableNextButton = imageIdx >= imageList.length - 1;
    return (
      <div className="image-modal-overlay">
        <div className="image-modal">
          <div className="image-modal-content">
            <div className="image-panel">
              <img src={image.originalUrl} alt={image.title} />
              {!displayButton
                && (<ImageRotateButton
                  direction={-1}
                  disable={disablePrevButton}
                  displayButton={true}
                  handleRotate={this.handleRotateImage}
                />
                )}
              {!displayButton
                && (<ImageRotateButton
                  direction={1}
                  disable={disableNextButton}
                  displayButton={true}
                  handleRotate={this.handleRotateImage}
                />
                )}
            </div>
            <div className="info-panel">
              <div className="user-info">
                <img src={image.imageUrl} alt={image.name} />
                <span className="user-name">
                  {image.name}
                </span>
              </div>
              <div className="date">
                {image.date}
              </div>
            </div>
          </div>
          {/* <button
            type="button"
            className="close-button"
            onClick={onCloseRequest}
          /> */}
        </div>
      </div>
    );
  }
}

export default ImageModal;
