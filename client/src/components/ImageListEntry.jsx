import React from 'react';

const ImageListEntry = ({ imgIdx, image, handleToggleModal}) => (
  <div
    className="image-carousel-img image-carousel-col"
    role="button"
    tabIndex="-1"
    onClick={handleToggleModal}
    onKeyUp={() => {}}
  >
    <img src={image.thumbnailUrl} alt={image.title} data-img-idx={imgIdx} />
  </div>
);

export default ImageListEntry;
