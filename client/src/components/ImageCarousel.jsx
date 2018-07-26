import React from 'react';
import $ from 'jquery';
import url from 'url';
import ImageListEntry from './ImageListEntry.jsx';
import ImageRotateButton from './ImageRotateButton.jsx';
import AddImageButton from './AddImageButton.jsx';

class ImageCarousel extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imageList: [],
      centerImageIdx: 0,
      displayButton: false,
    };
  }

  componentDidMount() {
    this.fetchImages();
  }

  fetchImages() {
    $.ajax({
      url: 'http://localhost:3001/businesses/1/images',
      method: 'GET',
      success: (imageList) => {
        this.setState({ imageList });
      },
    });
  }

  handleDisplayButton(show) {
    this.setState({
      displayButton: show,
    });
  }

  handleRotateImage(direction) {
    const { centerImageIdx } = this.state;
    this.setState({
      centerImageIdx: centerImageIdx + direction,
    });
  }

  render() {
    const { centerImageIdx, imageList, displayButton } = this.state;
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
    let imageIdxArray = [leftIdx, centerImageIdx, rightIdx];
    const displayAddPhoto = imageList.length < 3;
    imageIdxArray = imageIdxArray.filter(idx => imageList[idx] !== undefined);
    return (
      <div
        className={"image-carousel"
        + (displayAddPhoto ? ' image-carousel-bg' : '')}
        onMouseEnter={() => this.handleDisplayButton(true)}
        onMouseLeave={() => this.handleDisplayButton(false)}
      >
        <div className="image-carousel-row">
          {imageIdxArray.map(
            imgIdx => <ImageListEntry key={imgIdx} image={imageList[imgIdx]} centerImageIdx={centerImageIdx} />,
          )}
          {displayAddPhoto ? <AddImageButton /> : null}
        </div>
        {!displayAddPhoto
          && (<ImageRotateButton
            direction={-1}
            disable={disablePrevButton}
            displayButton={displayButton}
            handleRotate={this.handleRotateImage.bind(this)}
          />
          )}
        {!displayAddPhoto
          && (<ImageRotateButton
            direction={1}
            disable={disableNextButton}
            displayButton={displayButton}
            handleRotate={this.handleRotateImage.bind(this)}
          />
          )}
      </div>
    );
  }
}

export default ImageCarousel;
