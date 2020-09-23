import 'selectize/dist/js/selectize.min.js';
import 'selectize/dist/css/selectize.default.css';

const initTagging = () => {
  if (document.getElementById('tag-field')) {
    $('#tag-field').selectize({
      plugins: ['remove_button'],
      delimiter: ',',
      persist: false,
      create: function (input) {
        return {
          value: input,
          text: input,
        };
      },
    });
  }
};

export { initTagging };
