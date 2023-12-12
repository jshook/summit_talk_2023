INFO << EOF
⦁ The HTTP driver adapter allows for simple payloads to be expressed simply,
  as well as more advanced forms when necessary.
⦁ The first op uses a concise one-line form to specify a GET.
⦁ The scond op uses a more elaborate form to specify payload in-depth
  as well as instructions on how to validate the result.
⦁ Notice that in the second op, a bind point for {fullname} is used.
  This is a structural data tempate, not just a string. 

EOF

tee web_api.yaml << EOF
scenarios:
 default:
  basic: run driver=http

bindings:
 fullname: FullNames();

ops:

 op1: "GET https://google.com/ HTTP/1.1"

 op2:
  op: |
   POST https://httpbin.org/post
   Content-Type: application/json
   Accept: application/json

   {
     "example": "payload",
     "with structural bindings": "{fullname}"
   }
  ok-status: "2[0-9][0-9]"
  
EOF

nb5 web_api.yaml

nb5 web_api.yaml diag=brief

nb5 web_api.yaml diag=all

