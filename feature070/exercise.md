# Exercise

Develop a (Ubuntu bash) shell script

```sh
main.sh
```

This program will be invoked using the following procedure

```sh
cd feature070
chmod +x main.sh
bash ./main.sh > output.txt
```

from user 'root'.

The program's task is described further below (cp. 'Task').
Copy the program that produces the output to

```sh
main.sh
```

Do not forget to (Git) stage, commit, and push your changes to feature
branch 'feature070'. Check, if the green check-mark appears in the
Gitea Web application at feature branch 'feature070'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|070|5|03.02.2021|


#### Hints

- You will need to understand *REST*, *JSON*, and *HTTP*
- Useful commands may be, e.g. `sed`, `grep`, `curl` ...
  - See the respective `man` pages
  - If the commands (in case you are calling them in your bash script)
    are not pre-installed on the server, you will have to install them
    yourself as part of your bash script. Consider using `apt install` in
    unsupervised mode to do so.
  - Processing commands as user 'root' can also be tested locally, e.g. by
    using `sudo` (single command) or `sudo su` (multiple commands in a row,
    use `exit` to return to unprivileged user shell).
- For proper bash scripting and usage cp.
  - https://www.gnu.org/software/bash/manual/bash.html
- For proper use of regular expressions cp.
  - https://regex101.com/
- Read the docs!

#### Task

Call an REST-API. For the API your user name is 'vishnu.jayanand', and the API
is available at:

```sh
http://rest.api.local:8000
```

The API supports the following interfaces:

- `GET /token/{repo}` (1)
- `POST /data/{token}` (2)

 For further API details, see below ('FastAPI v0.1.0').

1. Request your user-specific token via (1). Extract the token and store it.
2. Use your token that you received from (1) to call (2) in order to set the
   following key/value pairs:

   - `"key1": "hpdfjpdvnrsazsnzwojsyvqpsrgbseyt"`
   - `"key2": "hbzkquxe"`
   - `"key3": "qkfiaqfmzdafjbym"`

3. Re-direct the result of successfully calling (2) to stdout.

The API is only available on the test server after upload and during automatic
testing. It can not be called from the Internet. In case you prefer to have a
local one for private testing, it might be useful to develop a test bed API
yourself.


<h1 id="fastapi">FastAPI v0.1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

<h1 id="fastapi-general">General</h1>

## Returns the API server's state

<a id="opIdget_state_state_get"></a>

> Code samples

```http
GET /state HTTP/1.1

Accept: application/json

```

`GET /state`

Returns the API server's state ('up', or an error message)

> Example responses

> 200 Response

```json
{
  "state": "string"
}
```

<h3 id="returns-the-api-server's-state-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|The API server's state|[State](#schemastate)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="fastapi-api">API</h1>

## Returns a repository-specific access token

<a id="opIdget_token_token__repo__get"></a>

> Code samples

```http
GET /token/{repo} HTTP/1.1

Accept: application/json

```

`GET /token/{repo}`

<h3 id="returns-a-repository-specific-access-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|repo|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "repo": "string",
  "token": "string"
}
```

<h3 id="returns-a-repository-specific-access-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generates and returns a repository-specific access token|[Token](#schematoken)|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|Validation Error|[HTTPValidationError](#schemahttpvalidationerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Stores a dictionary with key/value data

<a id="opIdpost_data_data__token__post"></a>

> Code samples

```http
POST /data/{token} HTTP/1.1

Content-Type: application/json
Accept: application/json

```

`POST /data/{token}`

> Body parameter

```json
{
  "key1": "string",
  "key2": "string",
  "key3": "string"
}
```

<h3 id="stores-a-dictionary-with-key/value-data-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|token|path|string|true|none|
|body|body|[KeyValueData](#schemakeyvaluedata)|true|none|

> Example responses

> 201 Response

```json
{
  "data": {
    "key1": "string",
    "key2": "string",
    "key3": "string"
  },
  "token": "string"
}
```

<h3 id="stores-a-dictionary-with-key/value-data-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Stores a dictionary with key/value data with a repository-specific access token|[KeyValueDataOut](#schemakeyvaluedataout)|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|Validation Error|[HTTPValidationError](#schemahttpvalidationerror)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_HTTPValidationError">HTTPValidationError</h2>
<!-- backwards compatibility -->
<a id="schemahttpvalidationerror"></a>
<a id="schema_HTTPValidationError"></a>
<a id="tocShttpvalidationerror"></a>
<a id="tocshttpvalidationerror"></a>

```json
{
  "detail": [
    {
      "loc": [
        "string"
      ],
      "msg": "string",
      "type": "string"
    }
  ]
}

```

HTTPValidationError

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detail|[[ValidationError](#schemavalidationerror)]|false|none|none|

<h2 id="tocS_KeyValueData">KeyValueData</h2>
<!-- backwards compatibility -->
<a id="schemakeyvaluedata"></a>
<a id="schema_KeyValueData"></a>
<a id="tocSkeyvaluedata"></a>
<a id="tocskeyvaluedata"></a>

```json
{
  "key1": "string",
  "key2": "string",
  "key3": "string"
}

```

KeyValueData

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|key1|string|true|none|Length-restricted key/value data|
|key2|string|true|none|Length-restricted key/value data|
|key3|string|true|none|Length-restricted key/value data|

<h2 id="tocS_KeyValueDataOut">KeyValueDataOut</h2>
<!-- backwards compatibility -->
<a id="schemakeyvaluedataout"></a>
<a id="schema_KeyValueDataOut"></a>
<a id="tocSkeyvaluedataout"></a>
<a id="tocskeyvaluedataout"></a>

```json
{
  "data": {
    "key1": "string",
    "key2": "string",
    "key3": "string"
  },
  "token": "string"
}

```

KeyValueDataOut

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|[KeyValueData](#schemakeyvaluedata)|true|none|A dictionary with 3 key/value pairs|
|token|string|true|none|A generated, repository-specific access token|

<h2 id="tocS_State">State</h2>
<!-- backwards compatibility -->
<a id="schemastate"></a>
<a id="schema_State"></a>
<a id="tocSstate"></a>
<a id="tocsstate"></a>

```json
{
  "state": "string"
}

```

State

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|state|string|true|none|The API server's state|

<h2 id="tocS_Token">Token</h2>
<!-- backwards compatibility -->
<a id="schematoken"></a>
<a id="schema_Token"></a>
<a id="tocStoken"></a>
<a id="tocstoken"></a>

```json
{
  "repo": "string",
  "token": "string"
}

```

Token

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|repo|string|true|none|A repository's name|
|token|string|true|none|A generated, repository-specific access token|

<h2 id="tocS_ValidationError">ValidationError</h2>
<!-- backwards compatibility -->
<a id="schemavalidationerror"></a>
<a id="schema_ValidationError"></a>
<a id="tocSvalidationerror"></a>
<a id="tocsvalidationerror"></a>

```json
{
  "loc": [
    "string"
  ],
  "msg": "string",
  "type": "string"
}

```

ValidationError

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|loc|[string]|true|none|none|
|msg|string|true|none|none|
|type|string|true|none|none|

