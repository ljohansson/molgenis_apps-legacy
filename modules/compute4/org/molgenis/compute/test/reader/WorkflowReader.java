package org.molgenis.compute.test.reader;

import org.molgenis.compute.design.ComputeParameter;
import org.molgenis.compute.design.Workflow;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: georgebyelas
 * Date: 22/08/2012
 * Time: 10:07
 * To change this template use File | Settings | File Templates.
 */
public interface WorkflowReader
{
    Workflow getWorkflow(String name);
    List<ComputeParameter> getParameters();
}
