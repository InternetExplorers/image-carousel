import React from 'react';
import styles from './styles/ImageListEntry.css';

const ImageListEntry = ({ imgIdx, image, handleToggleModal}) => (
  <div
    className={styles.imageCarouselImg}
    role="button"
    tabIndex="-1"
    onClick={handleToggleModal}
    onKeyUp={() => {}}
  >
    <img src={image.thumbnailUrl} alt={image.title} data-img-idx={imgIdx} />
  </div>
);

export default ImageListEntry;
