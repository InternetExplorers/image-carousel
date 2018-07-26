import React from 'react';

const ImageListEntry = ({ image }) => (
  <div className="image-carousel-img image-carousel-col">
    <img src={image.thumbnailUrl} alt={image.title} />
  </div>
);

export default ImageListEntry;
