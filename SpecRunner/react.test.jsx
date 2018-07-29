import Adapter from 'enzyme-adapter-react-16';
import { shallow, mount, render } from 'enzyme';
import enzyme from 'enzyme';
import React from 'react';
import ImageCarousel from '../client/src/components/ImageCarousel.jsx';
import ImageRotateButton from '../client/src/components/ImageRotateButton.jsx';
import AddImageButton from '../client/src/components/AddImageButton';
import ImageListEntry from '../client/src/components/ImageListEntry';
import ImageModal from '../client/src/components/ImageModal';

enzyme.configure({ adapter: new Adapter() });

describe('Test Image Carousel component', () => {
  let fakeImages;
  beforeEach(() => {
    fakeImages = [
      {
        date: '2018-01-01T08:00:00.000Z',
        description: 'this is bad',
        id: 1,
        name: 'The Forest Trumpet',
        originalUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg',
        profileFriendCount: 30,
        profileName: 'Amya Ryan',
        profileReviewCount: 42,
        profileUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user1.jpg',
        thumbnailUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg',
        title: 'raw shrimp',
      },
      {
        date: '2018-01-01T08:00:00.000Z',
        description: 'this is good',
        id: 2,
        name: 'The Forest Trumpet',
        originalUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg',
        profileFriendCount: 30,
        profileName: 'Amya Ryan',
        profileReviewCount: 42,
        profileUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user1.jpg',
        thumbnailUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg',
        title: 'raw shrimp',
      },
      {
        date: '2018-01-01T08:00:00.000Z',
        description: 'this is ok',
        id: 3,
        name: 'The Forest Trumpet',
        originalUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg',
        profileFriendCount: 30,
        profileName: 'Amya Ryan',
        profileReviewCount: 42,
        profileUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user1.jpg',
        thumbnailUrl: 'https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg',
        title: 'raw shrimp',
      },
    ];
  });

  it('should render ImageCarousel', () => {
    const wrapper = shallow(<ImageCarousel />);
    expect(wrapper.exists()).toEqual(true);
  });

  it('should render image add button when no image', () => {
    const wrapper = shallow(<ImageCarousel />);
    wrapper.setState({ imageList: [] });
    expect(wrapper.find(AddImageButton).exists()).toEqual(true);
  });

  it('should render 3 images', () => {
    const wrapper = shallow(<ImageCarousel />);
    wrapper.setState({ imageList: fakeImages });
    wrapper.update();
    expect(wrapper.find(ImageListEntry).exists()).toEqual(true);
    expect(wrapper.find(ImageRotateButton).exists()).toEqual(true);
    expect(wrapper.find(ImageListEntry)).toHaveLength(3);
  });

  it('should click next and prev', () => {
    const wrapper = mount(<ImageCarousel />);
    wrapper.setState({ imageList: fakeImages });
    wrapper.update();
    wrapper.find(ImageRotateButton).find('[direction=1]').simulate('click');
    expect(wrapper.state().centerImageIdx).toEqual(1);
    wrapper.find(ImageRotateButton).find('[direction=-1]').simulate('click');
    expect(wrapper.state().centerImageIdx).toEqual(0);
  });

  it('should pop out modal', () => {
    const wrapper = mount(<ImageCarousel />);
    wrapper.setState({ imageList: fakeImages });
    wrapper.update();
    expect(wrapper.find(ImageModal).exists()).toEqual(false);
    wrapper.find(ImageListEntry).at(1).find('[role="button"]').simulate('click');
    expect(wrapper.find(ImageModal).exists()).toEqual(true);
  });
});
