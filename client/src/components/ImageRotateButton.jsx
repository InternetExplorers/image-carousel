import React from 'react';

const ImageNextButton = ({ handleRotate }) => (
  <div className={handleRotate ? 'image-carousel-show' : 'image-carousel-disable'}>
    Next
  </div>
);

const ImagePrevButton = ({ handleRotate }) => (
  <div className={handleRotate ? 'image-carousel-show' : 'image-carousel-disable'}>
    Prev
  </div>
);

const ImageRotateButton = ({
  direction, imageList, centerImageIdx, handleRotate,
}) => {
  let button;
  if (direction < 0) {
    button = <ImagePrevButton handleRotate={centerImageIdx === 0 ? null : () => handleRotate(-1)} />;
  } else {
    button = <ImageNextButton handleRotate={centerImageIdx === imageList.length - 1 ? null : () => handleRotate(1)} />;
  }
  return (
    { button }
  );
};

export default ImageRotateButton;
