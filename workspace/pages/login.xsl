<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">
	        	<br/><br/><br/><br/>

	        	<form method="post" action="{$current-url}/?debug" enctype="multipart/form-data">
				    <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
				    <label>
				        <div class="enter-text-field" style="height: 100px;">
	                        <h3 class="title-centre">NAME</h3>
	                        <input name="fields[name]" type="text" id="your-notes" />
	                    </div>
				    </label>
				    <label>
				        <div class="enter-text-field" style="height: 100px;">
	                        <h3 class="title-centre">SURNAME</h3>
	                        <input name="fields[surname]" type="text" id="your-notes" />
	                    </div>
				    </label>
				    <label>
				        <div class="enter-text-field" style="height: 100px;">
	                        <h3 class="title-centre">YOUR BIO</h3>
	                        <input name="fields[your-biography]" type="text" id="your-notes" />
	                    </div>
				    </label>
				    <label>
				        <div class="enter-text-field" style="height: 100px;">
	                        <h3 class="title-centre">SHORT TEXT</h3>
	                        <input name="fields[short-text]" type="text" id="your-notes" />
	                    </div>
				    </label>
				    <label>
				        <div class="enter-text-field" style="height: 100px;">
	                        <h3 class="title-centre">EMAIL</h3>
	                        <input name="fields[email]" type="text" id="your-notes" />
	                    </div>
				    </label>

				    <fieldset>
				        <label>
				        	<div class="enter-text-field" style="height: 100px;">
		                        <h3 class="title-centre">PASSWORD</h3>
					            <input name="fields[password][password]" id="your-notes" type="password" />
					        </div>
				        </label>
				        <label>
				        	<div class="enter-text-field" style="height: 100px;">
		                        <h3 class="title-centre">CONFIRM PASSWORD</h3>
					            <input name="fields[password][confirm]" id="your-notes" type="password" />
					        </div>
				        </label>
				    </fieldset>

				    <label>role
				        <select class="form-control contact-plan" name="fields[role]">
				            <option value="1">Public</option>
				            <option value="2">developer</option>
				            <option value="3">designer</option>
				        </select>
				    </label>
				    <input name="action[createuser]" type="submit" value="Submit" />
				</form>



				<form method="post" autocomplete='off'>
				    <label>Username
				        <input name="fields[email]" type="text" />
				    </label>
				    <label>Password
				        <input name="fields[password]" type="password" />
				    </label>

				    <input name="member-action[login]" type="submit" value="Login" />
				</form>

				
	        </div>
	    </div>
	</div>
</xsl:template>
</xsl:stylesheet>