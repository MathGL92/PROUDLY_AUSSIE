import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
    strings: ["Buy Australian made,", "Help your local community!"],
    typeSpeed: 50,
    loop: true
  });
  }
}

export { loadDynamicBannerText };
