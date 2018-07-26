import React from 'react';

const ImageRotateButton = ({
  direction,
  disable,
  handleRotate,
  displayButton
}) => (
  <span
    className={'image-carousel-button'
    + (displayButton ? '' : ' image-carousel-button-hide')
    + (handleRotate ? '' : ' image-carousel-button-disable')}
    id={direction > 0 ? 'image-carousel-next' : 'image-carousel-prev'}
    onClick={disable ? () => {} : () => { handleRotate(direction); }}
    onKeyUp={() => {}}
    role="button"
    tabIndex="-1"
  >
    {direction > 0 ? '❯' : '❮'}
  </span>
);

export default ImageRotateButton;
