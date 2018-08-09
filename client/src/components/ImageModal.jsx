import React from 'react';
import moment from 'moment';
import ImageRotateButton from './ImageRotateButton.jsx';
import styles from './styles/ImageModal.css';

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
    const displayButton = imageList.length <= 1;
    const disablePrevButton = imageIdx === 0;
    const disableNextButton = imageIdx >= imageList.length - 1;
    return (
      <div className={styles.imageModalOverlay}>
        <div className={styles.imageModal} ref={node => (this.modal = node)}>
          <div className={styles.imageModalContent}>
            <div className={styles.imagePanel}>
              <img src={image.originalUrl} alt={image.title} />
              <div className={styles.imageFooter}>
                <div className={`${styles.browseButton} ${styles.buttonGroup}`}>
                  <img
                    className={styles.browseIcon}
                    alt="icon"
                    src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/browseIcon.png"
                  />
                  <span>
                    Browse all
                  </span>
                </div>
                <div className={styles.imageCount}>
                  {`${imageIdx + 1} of ${imageList.length}`}
                </div>
                <div className={styles.mediaControl}>
                  <span className={`${styles.shareButton} ${styles.buttonGroup}`}>
                    <img
                      className={styles.shareIcon}
                      alt="icon"
                      src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shareIcon.png"
                    />
                    <span>
                      Share
                    </span>
                  </span>
                  <span className={`${styles.complimentButton} ${styles.buttonGroup}`}>
                    <img
                      alt="icon"
                      src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/complimentIcon.png"
                    />
                    <span>
                      Compliment
                    </span>
                  </span>
                  <span className={`${styles.flagButton} ${styles.buttonGroup}`}>
                    <img
                      alt="icon"
                      src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/flagIcon.png"
                    />
                  </span>
                </div>
              </div>
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
            <div className={styles.infoPanel}>
              <div className={styles.userInfo}>
                <div className={styles.userAvatar}>
                  <img src={image.profileUrl} alt={image.profileName} />
                </div>
                <div className={styles.userInfoText}>
                  <div className={styles.userName}>
                    {image.profileName}
                  </div>
                  <div className={styles.userStat}>
                    <span className={styles.imageModalIcon}>
                      <img
                        src="https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/friendIcon.png"
                        alt="friend-icon"
                      />
                      <span>
                        {image.profileFriendCount}
                      </span>
                    </span>
                    <span className={styles.imageModalIcon}>
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
              <div className={styles.imageModalDescription}>
                {image.description}
              </div>
              <div className={styles.imageModalDate}>
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
