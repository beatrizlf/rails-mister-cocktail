import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Drinks from another galaxy", "Try it now!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };