import React from 'react';
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

  handleRotateImage(direction) {
    this.setState({
      centerImageIdx: this.centerImageIdx + direction,
    });
  }

  render() {
    const { centerImageIdx, imageList } = this.state;
    let leftIdx;
    let rightIdx;
    if (centerImageIdx === 0) {
      leftIdx = centerImageIdx + 2;
      rightIdx = centerImageIdx + 1;
    } else {
      leftIdx = centerImageIdx - 1;
      rightIdx = centerImageIdx + 1;
    }
    return (
      <div className="image-carousel">
        <div>
          <ImageListEntry image={imageList[leftIdx]} />
          <ImageListEntry image={imageList[centerImageIdx]} />
          <ImageListEntry image={imageList[rightIdx]} />
        </div>
        <ImageRotateButton direction={1} />
        <ImageRotateButton direction={-1} />
      </div>
    );
  }
}

export default ImageCarousel;
