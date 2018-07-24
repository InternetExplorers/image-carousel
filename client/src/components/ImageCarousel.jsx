import React from 'react';
import $ from 'jquery';
import ImageListEntry from './ImageListEntry.jsx';
import ImageRotateButton from './ImageRotateButton.jsx';

class ImageCarousel extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imageList: [],
      centerImageIdx: 0,
    };
  }

  componentDidMount() {
    $.ajax({
      url: 'http://localhost:3001/businesses/1/images',
      method: 'GET',
      success: (imageList) => {
        this.setState({ imageList });
      },
    });
  }

  handleRotateImage(direction) {
    const { centerImageIdx } = this.state;
    this.setState({
      centerImageIdx: centerImageIdx + direction,
    });
  }

  render() {
    const { centerImageIdx, imageList } = this.state;
    let leftIdx;
    let rightIdx;
    let disablePrevButton = false;
    let disableNextButton = false;
    if (centerImageIdx === 0) {
      disablePrevButton = true;
      leftIdx = centerImageIdx + 2;
      rightIdx = centerImageIdx + 1;
    } else {
      if (centerImageIdx === imageList.length - 1) disableNextButton = true;
      leftIdx = centerImageIdx - 1;
      rightIdx = centerImageIdx + 1;
    }
    return (
      <div className="image-carousel">
        <div className="image-carousel-row">
          <ImageListEntry image={imageList[leftIdx]} centerImageIdx={centerImageIdx} />
          <ImageListEntry image={imageList[centerImageIdx]} centerImageIdx={centerImageIdx} />
          <ImageListEntry image={imageList[rightIdx]} centerImageIdx={centerImageIdx} />
        </div>
        <ImageRotateButton
          direction={-1}
          disable={disablePrevButton}
          handleRotate={this.handleRotateImage.bind(this)}
        />
        <ImageRotateButton
          direction={1}
          disable={disableNextButton}
          handleRotate={this.handleRotateImage.bind(this)}
        />
      </div>
    );
  }
}

export default ImageCarousel;
