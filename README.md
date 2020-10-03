# badasn

A list of ASNs with questionable practices and non-working or unresponsive 
abuse departments despite being major sources of abusive traffic. The ASNs 
listed exhibited persistent abusive behavior over an extended period of time 
until banned.

While being a fervent proponent of a free and mostly unrestricted internet, I 
equally strongly believe that to keep it that way (or prevent it from getting 
even worse) providers need to actively respond to reports of bad actors. If 
they don't, they should be called out.

Use with care and only if you are completely sure about the resulting 
consequences. This list is manually curated, not automatically generated. False 
positives should be minimal.

To get to the data on the command-line, I recommend [jq][jq]. It makes working 
with JSON easy and intuitive. For example, if you're just looking for the ASN 
numbers and nothing else:

```
cat badasn.json | jq '.[].asn'
```

If you want to filter by a specific field like `country`:

```
cat badasn.json | jq '.[] | select(.country=="CN")'
```

And to put both requests together:

```
cat badasn.json | jq '.[] | select(.country=="CN") | .asn'
```

[jq]: https://stedolan.github.io/jq/

## Reasons for Banning

* Abuse mailbox connection timeout.
* Abuse mailbox does not exist.
* Abuse mailbox full.
* Abuse mailbox is an unresponsive Gmail address.
* Abuse mailbox not reachable.
* Abuse mailbox over quota.
* Abuse mailbox rejects all messages.
* Abuse mailbox unreachable.
* Account is full (quota exceeded).
* Aggressive scanning attempts from security services provider
* Failed to establish connection.
* Mailbox is full / Blocks limit exceeded / Inode limit exceeded.
* Mailbox is full.
* Multiple reports, no response, aggressive abuse.
* Multiple reports, no response, suspected spam haven.
* Multiple reports, no response.
* Multiple reports, tickets get immediately closed without comment, otherwise no response.
* No abuse mailbox.
* Non-working abuse address, filters abuse reports, therefore defeating the purpose.
* Persistent spammer.
* Rejects legitimate email.
* Remote MTA not accepting connections.
* The recipient's mailbox is full and can't accept messages now.
* Too many concurrent deliveries for user: retry timeout exceeded.
* Unknown mail server. Could not find a mail server for kabelvision.com.
* Unknown mail server. Could not find a mail server for orange-cit.ci.
* Unknown mail server. Could not find a mail server.
