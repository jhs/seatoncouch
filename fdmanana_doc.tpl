# comment lines start with a sharp (#)

{
  "_id": "doc#{doc_id_counter}",
  "name": "#{random_string(100)}",
  "address": "#{random_string(200)}",
  "age": #{random_int(1, 100)},
  "children": #{random_int(0, 10)},
  "bio": "#{random_string(10000)}",

  "_attachments": {
    "hello.txt": {
      "content_type": "text/plain",
      # no need to base64 encode - seatoncouch will use the standalone attachment API
      "data": "hello world, from doc doc#{doc_id_counter}"
    },
    "lorem.txt": {
      "content_type": "text/plain",
      # data is the content of the file lorem.txt
      "data": "#{file(lorem.txt)}"
    }
  }
}
