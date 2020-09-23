import 'selectize/dist/js/selectize.min.js';
import 'selectize/dist/css/selectize.css';

const initTagging = () => {
  if (document.getElementById('tag-field')) {
    $('#tag-field').selectize({
      plugins: ['remove_button'],
      delimiter: ',',
      persist: false,
      create: false,
      maxItems: 3,
    });
  }
};

export { initTagging };
