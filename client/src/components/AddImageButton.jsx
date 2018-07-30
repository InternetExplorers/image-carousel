import React from 'react';
import styles from './styles/AddImageButton.css';


const AddImageButton = (props) => (
  <span role="img" aria-label="addPhoto" className={styles.imageCarouselAddImageButton}>
    📷 Add Photos
  </span>
);

export default AddImageButton;
