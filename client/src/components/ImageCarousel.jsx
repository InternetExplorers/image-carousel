import React from 'react';
import { fetchImages } from '../requestHelper';
import ImageListEntry from './ImageListEntry.jsx';
import ImageRotateButton from './ImageRotateButton.jsx';
import AddImageButton from './AddImageButton.jsx';
import ImageModal from './ImageModal.jsx';
import styles from './styles/ImageCarousel.css';

class ImageCarousel extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imageList: [],
      centerImageIdx: 0,
      selectImgIdx: 0,
      displayButton: false,
      displayModal: false,
    };
    this.handleRotateImage = this.handleRotateImage.bind(this);
    this.handleToggleModal = this.handleToggleModal.bind(this);
  }

  componentDidMount() {
    fetchImages(10, (err, imageList) => {
      if (err) {
        throw (err);
      } else {
        this.setState({ imageList });
      }
    });
  }

  handleToggleModal(event) {
    this.setState(
      prevState => ({ displayModal: !prevState.displayModal }),
    );
    if (event && event.target.dataset.imgIdx) {
      const imageIdx = Number(event.target.dataset.imgIdx);
      this.setState({
        selectImgIdx: imageIdx,
      });
    }
  }

  handleDisplayButton(boolVisible) {
    this.setState({
      displayButton: boolVisible,
    });
  }

  handleRotateImage(direction) {
    const { centerImageIdx } = this.state;
    this.setState({
      centerImageIdx: centerImageIdx + direction,
    });
  }

  render() {
    const {
      centerImageIdx, imageList, displayButton, selectImgIdx, displayModal,
    } = this.state;
    let leftIdx;
    let rightIdx;
    let disablePrevButton = false;
    let disableNextButton = false;
    if (centerImageIdx === 0) {
      disablePrevButton = true;
      leftIdx = centerImageIdx + 2;
      rightIdx = centerImageIdx + 1;
    } else {
      leftIdx = centerImageIdx - 1;
      rightIdx = centerImageIdx + 1;
      if (rightIdx >= imageList.length - 1) disableNextButton = true;
    }
    console.log(styles.imageCarouselBg)
    let imageIdxArray = [leftIdx, centerImageIdx, rightIdx];
    const displayAddPhoto = imageList.length < 3;
    imageIdxArray = imageIdxArray.filter(idx => imageList[idx] !== undefined);
    return (
      <div
        className={styles.imageCarousel
        + (displayAddPhoto ? ` ${styles.imageCarouselBg}` : '')}
        onMouseEnter={() => this.handleDisplayButton(true)}
        onMouseLeave={() => this.handleDisplayButton(false)}
      >
        <div className={styles.imageCarouselRow}>
          {imageIdxArray.map(
            (imgIdx) => {
              return (
                <ImageListEntry
                  key={imgIdx}
                  imgIdx={imgIdx}
                  image={imageList[imgIdx]}
                  centerImageIdx={centerImageIdx}
                  handleToggleModal={this.handleToggleModal}
                />);
            },
          )}
          {displayAddPhoto ? <AddImageButton /> : null}
        </div>
        {!displayAddPhoto
          && (<ImageRotateButton
            direction={-1}
            disable={disablePrevButton}
            displayButton={displayButton}
            handleRotate={this.handleRotateImage}
          />
          )}
        {!displayAddPhoto
          && (<ImageRotateButton
            direction={1}
            disable={disableNextButton}
            displayButton={displayButton}
            handleRotate={this.handleRotateImage}
          />
          )}
        {displayModal
          && (<ImageModal
            imageList={imageList}
            imageIdx={selectImgIdx}
            onCloseRequest={this.handleToggleModal}
          />
          )}
      </div>
    );
  }
}

export default ImageCarousel;
