import React from 'react';

const ImageListEntry = ({ image }) => {
  let imagePanel;
  if (image) {
    imagePanel = (
      <div>
        <img src={image.thumbnailUrl} alt={image.description} />
      </div>
    );
  } else {
    imagePanel = (
      <div>
        No Image
      </div>
    );
  }
  return (
    <div className="image-carousel-row">
      {imagePanel}
    </div>
  );
};

export default ImageListEntry;
