export default function fetchAPI(str = '') {
  if (str === '') return;

  return fetch('https://loc.awanuilabs-directories.com/wp-json/wp/v2/' + str)
}