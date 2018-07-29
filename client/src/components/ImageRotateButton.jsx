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
    + (disable ? ' image-carousel-button-disable' : ' image-carousel-button-enable')
    + (direction > 0 ? ' image-carousel-next' : ' image-carousel-prev')}
    onClick={disable ? () => {} : () => { handleRotate(direction); }}
    onKeyUp={() => {}}
    role="button"
    tabIndex="-1"
    aria-hidden="true"
  >
    {direction > 0 ? '❯' : '❮'}
  </span>
);

export default ImageRotateButton;
