import React from 'react';
import moment from 'moment';
import ImageRotateButton from './ImageRotateButton.jsx';

class ImageModal extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imageList: props.imageList, 
      imageIdx: props.imageIdx,
    };
    this.handleRotateImage = this.handleRotateImage.bind(this);
    this.handleClickOutside = this.handleClickOutside.bind(this);
  }

  componentDidMount() {
    document.addEventListener('mousedown', this.handleClickOutside);
  }

  componentWillUnmount() {
    document.removeEventListener('mousedown', this.handleClickOutside);
  }

  handleClickOutside(event) {
    const { onCloseRequest } = this.props;
    if (this.modal && !this.modal.contains(event.target)) {
      onCloseRequest();
    }
  }

  handleRotateImage(direction) {
    const { imageIdx } = this.state;
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
        <div className="image-modal" ref={node => (this.modal = node)}>
          <div className="image-modal-content">
            <div className="image-panel">
              <img src={image.originalUrl} alt={image.title} />
              {!displayButton
                && (<ImageRotateButton
                  direction={-1}
                  disable={disablePrevButton}
                  displayButton
                  handleRotate={this.handleRotateImage}
                />
                )}
              {!displayButton
                && (<ImageRotateButton
                  direction={1}
                  disable={disableNextButton}
                  displayButton
                  handleRotate={this.handleRotateImage}
                />
                )}
            </div>
            <div className="info-panel">
              <div className="user-info">
                <div className="user-avatar">
                  <img src={image.profileUrl} alt={image.profileName} />
                </div>
                <div className="user-info-text">
                  <div className="user-name">
                    {image.profileName}
                  </div>
                  <div className="user-stat">
                    <span className="image-modal-icon">
                      <img
                        src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/friendIcon.png"
                        alt="friend-icon"
                      />
                      <span>
                        {image.profileFriendCount}
                      </span>
                    </span>
                    <span className="image-modal-icon">
                      <img
                        src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/reviewIcon.png"
                        alt="review-icon"
                      />
                      <span>
                        {image.profileReviewCount}
                      </span>
                    </span>
                  </div>
                </div>
              </div>
              <div className="image-modal-description">
                {image.description}
              </div>
              <div className="image-modal-date">
                {moment(image.date).format('MMMM Do, YYYY')}
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ImageModal;
