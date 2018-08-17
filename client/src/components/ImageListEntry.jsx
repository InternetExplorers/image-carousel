import React from 'react';
import styles from './styles/ImageListEntry.css';

const ImageListEntry = ({ imgIdx, image, handleToggleModal, pos, isCenter }) => (
  <div
    className={styles.imageCarouselImg
    + (pos === 0 ? ` ${styles.leftImg}` : '')
    + (pos === 1 ? ` ${styles.centerImg}` : '')
    + (pos === 2 ? ` ${styles.rightImg}` : '')
    + (!isCenter ? ` ${styles.sideImg}` : '')}
    role="button"
    tabIndex="-1"
    onClick={handleToggleModal}
    onKeyUp={() => {}}
  >
    <img src={image.url} alt={image.title} data-img-idx={imgIdx} />
    <div>
      {image.title}
    </div>
  </div>
);

export default ImageListEntry;
