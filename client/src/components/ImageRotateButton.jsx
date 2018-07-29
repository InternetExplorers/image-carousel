import React from 'react';
import styles from './styles/ImageRotateButton.css';

const ImageRotateButton = ({
  direction,
  disable,
  handleRotate,
  displayButton
}) => (
  <span
    className={styles.imageCarouselButton
    + (displayButton ? '' : ` ${styles.hide}`)
    + (disable ? ` ${styles.disbale}` : ` ${styles.enable}`)
    + (direction > 0 ? ` ${styles.next}` : ' image-carousel-prev')}
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
