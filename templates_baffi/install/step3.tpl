{if $page->isSuccess()}
	<div align="center">
		<p>The news server setup is correct. If you need to change these settings, they can be edited in /www/config.php. <br/><br/>You may continue to the next step.</p>
		<form action="step4.php"><input type="submit" value="Step four: Cache Settings" /></form>
	</div>
{else}

<p>newznab has a <a target="_blank" href="http://affiliate.astraweb.com/10457.html">special affilate deal</a> <small><sup>[Opens in new window]</sup></small> with <a target="_blank" href="http://affiliate.astraweb.com/10457.html">astraweb</a> , who in our opinion provide the best value usenet access. newznab is also designed to take advantage of astrawebs compression support, which other providers do not offer.
</p>

<p>If you already have a news server (NNTP), please provide the following information. If your news server does not require authentication then leave username and password blank:</p>
<form action="?" method="post">
	<table width="100%" border="0" style="margin-top:10px;" class="data highlight">
		<tr class="">
			<td><label for="server">Server:</label></td>
			<td>
				<input type="text" name="server" id="server" value="{$cfg->NNTP_SERVER}" />
				<div class="hint">e.g. eu.news.astraweb.com</div>
			</td>
		</tr>
		<tr class="alt">
			<td><label for="user">Username:</label></td>
			<td><input type="text" name="user" id="user" value="{$cfg->NNTP_USERNAME}" /></td>
		</tr>
		<tr class="">
			<td><label for="pass">Password:</label></td>
			<td>
				<input type="text" name="pass" id="pass" value="{$cfg->NNTP_PASSWORD}" />
			</td>
		</tr>
		<tr class="alt">
			<td><label for="port">Port:</label></td>
			<td>
				<input type="text" name="port" id="port" value="{$cfg->NNTP_PORT}" />
				<div class="hint">e.g. 119 or 443,563 for SSL</div>
			</td>
		</tr>
		<tr>
			<td><label for="ssl">SSL?:</label></td>
			<td>
				<input type="checkbox" name="ssl" id="ssl" value="1" {if $cfg->NNTP_SSLENABLED=="true"}checked="checked"{/if} />
			</td>
		</tr>
	</table>

	<div style="padding-top:20px; text-align:center;">
			{if $cfg->error}
			<div>
				The following error was encountered:<br />
				<span class="error">&bull; {$cfg->nntpCheck->message}</span><br /><br />
				<br />
			</div>
			{/if}
			<input type="submit" value="Test Connection" />
	</div>

</form>

{/if}